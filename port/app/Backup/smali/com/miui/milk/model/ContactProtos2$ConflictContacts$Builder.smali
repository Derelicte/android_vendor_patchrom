.class public final Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$ConflictContacts;",
        "Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;",
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11748
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11851
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    .line 11749
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->maybeForceBuilderInitialization()V

    .line 11750
    return-void
.end method

.method static synthetic access$14200()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->create()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    .locals 1

    .prologue
    .line 11755
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactIsMutable()V
    .locals 2

    .prologue
    .line 11854
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 11855
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    .line 11856
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    .line 11858
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11753
    return-void
.end method


# virtual methods
.method public addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11887
    if-nez p1, :cond_0

    .line 11888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11890
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->ensureContactIsMutable()V

    .line 11891
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11893
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
    .locals 4

    .prologue
    .line 11792
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;-><init>(Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 11793
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    .line 11794
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 11795
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    .line 11796
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    .line 11798
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->access$14402(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;Ljava/util/List;)Ljava/util/List;

    .line 11799
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    .locals 2

    .prologue
    .line 11766
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->create()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

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
    .line 11743
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

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
    .line 11743
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

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
    .line 11743
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11826
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 11827
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 11832
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11834
    :sswitch_0
    return-object p0

    .line 11839
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    .line 11840
    .local v0, subBuilder:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 11841
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    goto :goto_0

    .line 11827
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11803
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 11814
    :cond_0
    :goto_0
    return-object p0

    .line 11804
    :cond_1
    #getter for: Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->access$14400(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11805
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11806
    #getter for: Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->access$14400(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    .line 11807
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->bitField0_:I

    goto :goto_0

    .line 11809
    :cond_2
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->ensureContactIsMutable()V

    .line 11810
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->contact_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->access$14400(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
