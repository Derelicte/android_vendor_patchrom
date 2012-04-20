.class public final Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Nickname;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Nickname;",
        "Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3240
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3364
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->value_:Ljava/lang/Object;

    .line 3421
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->label_:Ljava/lang/Object;

    .line 3241
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->maybeForceBuilderInitialization()V

    .line 3242
    return-void
.end method

.method static synthetic access$3900()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 1

    .prologue
    .line 3235
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 1

    .prologue
    .line 3247
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3245
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Nickname;
    .locals 2

    .prologue
    .line 3270
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Nickname;

    move-result-object v0

    .line 3271
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Nickname;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Nickname;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3272
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3274
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3235
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Nickname;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Nickname;
    .locals 5

    .prologue
    .line 3288
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Nickname;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;-><init>(Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 3289
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Nickname;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    .line 3290
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3291
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3292
    or-int/lit8 v2, v2, 0x1

    .line 3294
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Nickname;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->access$4102(Lcom/miui/milk/model/ContactProtos2$Nickname;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3295
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3296
    or-int/lit8 v2, v2, 0x2

    .line 3298
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Nickname;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->access$4202(Lcom/miui/milk/model/ContactProtos2$Nickname;I)I

    .line 3299
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3300
    or-int/lit8 v2, v2, 0x4

    .line 3302
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Nickname;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->access$4302(Lcom/miui/milk/model/ContactProtos2$Nickname;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    #setter for: Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Nickname;->access$4402(Lcom/miui/milk/model/ContactProtos2$Nickname;I)I

    .line 3304
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3235
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3235
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 2

    .prologue
    .line 3262
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Nickname;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Nickname;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

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
    .line 3235
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

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
    .line 3235
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

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
    .line 3235
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3330
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3331
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3336
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3338
    :sswitch_0
    return-object p0

    .line 3343
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    .line 3344
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 3348
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    .line 3349
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->type_:I

    goto :goto_0

    .line 3353
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    .line 3354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 3331
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Nickname;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3308
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Nickname;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3318
    :cond_0
    :goto_0
    return-object p0

    .line 3309
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Nickname;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3310
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 3312
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Nickname;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3313
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 3315
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Nickname;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3316
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3436
    if-nez p1, :cond_0

    .line 3437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3439
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    .line 3440
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->label_:Ljava/lang/Object;

    .line 3442
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3408
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    .line 3409
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->type_:I

    .line 3411
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3379
    if-nez p1, :cond_0

    .line 3380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3382
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->bitField0_:I

    .line 3383
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->value_:Ljava/lang/Object;

    .line 3385
    return-object p0
.end method
