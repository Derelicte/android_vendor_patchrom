.class public final Lcom/miui/milk/model/ContactProtos2$AddressBook;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressBook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$AddressBook;


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11575
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$AddressBook;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 11576
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->initFields()V

    .line 11577
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11087
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11146
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->memoizedIsInitialized:B

    .line 11166
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->memoizedSerializedSize:I

    .line 11088
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11082
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;-><init>(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11089
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11146
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->memoizedIsInitialized:B

    .line 11166
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->memoizedSerializedSize:I

    .line 11089
    return-void
.end method

.method static synthetic access$13900(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11082
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/miui/milk/model/ContactProtos2$AddressBook;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11082
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14000(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11082
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14002(Lcom/miui/milk/model/ContactProtos2$AddressBook;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11082
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 1

    .prologue
    .line 11093
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 11143
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;

    .line 11144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;

    .line 11145
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 1

    .prologue
    .line 11256
    #calls: Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->create()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->access$13700()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 11259
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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
    .line 11125
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;

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
    .line 11104
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 11168
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->memoizedSerializedSize:I

    .line 11169
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 11181
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 11171
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 11172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 11173
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11176
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 11177
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11180
    :cond_2
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->memoizedSerializedSize:I

    move v2, v1

    .line 11181
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 11148
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->memoizedIsInitialized:B

    .line 11149
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 11152
    :goto_0
    return v1

    .line 11149
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 11151
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->memoizedIsInitialized:B

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
    .line 11186
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
    .line 11157
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getSerializedSize()I

    .line 11158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11159
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11161
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11162
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11164
    :cond_1
    return-void
.end method
