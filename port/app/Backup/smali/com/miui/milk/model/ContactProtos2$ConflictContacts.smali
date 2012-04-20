.class public final Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConflictContacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;


# instance fields
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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11943
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    .line 11944
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->initFields()V

    .line 11945
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11596
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11633
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->memoizedIsInitialized:B

    .line 11650
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->memoizedSerializedSize:I

    .line 11597
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11591
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;-><init>(Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11598
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11633
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->memoizedIsInitialized:B

    .line 11650
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->memoizedSerializedSize:I

    .line 11598
    return-void
.end method

.method static synthetic access$14400(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11591
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14402(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11591
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
    .locals 1

    .prologue
    .line 11602
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 11631
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;

    .line 11632
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    .locals 1

    .prologue
    .line 11736
    #calls: Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->create()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->access$14200()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 11739
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->newBuilder()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 11652
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->memoizedSerializedSize:I

    .line 11653
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 11661
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 11655
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 11656
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 11657
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11656
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11660
    :cond_1
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->memoizedSerializedSize:I

    move v2, v1

    .line 11661
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 11666
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11644
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->getSerializedSize()I

    .line 11645
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11646
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->contact_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11645
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11648
    :cond_0
    return-void
.end method
