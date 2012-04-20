.class public final Lcom/miui/milk/model/ContactProtos2$Group;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Group;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private deleted_:I

.field private groupOrder_:I

.field private groupVisible_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notes_:Ljava/lang/Object;

.field private sourceId_:Ljava/lang/Object;

.field private systemId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11060
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Group;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Group;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Group;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Group;

    .line 11061
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Group;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Group;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Group;->initFields()V

    .line 11062
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Group$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9979
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10259
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->memoizedIsInitialized:B

    .line 10309
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->memoizedSerializedSize:I

    .line 9980
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Group$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Group;-><init>(Lcom/miui/milk/model/ContactProtos2$Group$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10259
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->memoizedIsInitialized:B

    .line 10309
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->memoizedSerializedSize:I

    .line 9981
    return-void
.end method

.method static synthetic access$12302(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12402(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/miui/milk/model/ContactProtos2$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->version_:I

    return p1
.end method

.method static synthetic access$12602(Lcom/miui/milk/model/ContactProtos2$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->deleted_:I

    return p1
.end method

.method static synthetic access$12702(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12802(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->notes_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->systemId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/miui/milk/model/ContactProtos2$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupVisible_:I

    return p1
.end method

.method static synthetic access$13102(Lcom/miui/milk/model/ContactProtos2$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupOrder_:I

    return p1
.end method

.method static synthetic access$13202(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->sourceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/miui/milk/model/ContactProtos2$Group;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$13402(Lcom/miui/milk/model/ContactProtos2$Group;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$13502(Lcom/miui/milk/model/ContactProtos2$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9974
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Group;
    .locals 1

    .prologue
    .line 9985
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Group;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Group;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10014
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->guid_:Ljava/lang/Object;

    .line 10015
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10016
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10018
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->guid_:Ljava/lang/Object;

    .line 10021
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getLuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10046
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->luid_:Ljava/lang/Object;

    .line 10047
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10048
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10050
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->luid_:Ljava/lang/Object;

    .line 10053
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getNotesBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10130
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->notes_:Ljava/lang/Object;

    .line 10131
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10132
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10134
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->notes_:Ljava/lang/Object;

    .line 10137
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getSourceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10214
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->sourceId_:Ljava/lang/Object;

    .line 10215
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10216
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10218
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->sourceId_:Ljava/lang/Object;

    .line 10221
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getSystemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10162
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->systemId_:Ljava/lang/Object;

    .line 10163
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10164
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10166
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->systemId_:Ljava/lang/Object;

    .line 10169
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10098
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->title_:Ljava/lang/Object;

    .line 10099
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10100
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10102
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->title_:Ljava/lang/Object;

    .line 10105
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10246
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->guid_:Ljava/lang/Object;

    .line 10247
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->luid_:Ljava/lang/Object;

    .line 10248
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->version_:I

    .line 10249
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->deleted_:I

    .line 10250
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->title_:Ljava/lang/Object;

    .line 10251
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->notes_:Ljava/lang/Object;

    .line 10252
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->systemId_:Ljava/lang/Object;

    .line 10253
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupVisible_:I

    .line 10254
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupOrder_:I

    .line 10255
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->sourceId_:Ljava/lang/Object;

    .line 10256
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 10257
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 10258
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1

    .prologue
    .line 10439
    #calls: Lcom/miui/milk/model/ContactProtos2$Group$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->access$12100()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 10442
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 10232
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 10242
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getDeleted()I
    .locals 1

    .prologue
    .line 10074
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->deleted_:I

    return v0
.end method

.method public getGroupOrder()I
    .locals 1

    .prologue
    .line 10190
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupOrder_:I

    return v0
.end method

.method public getGroupVisible()I
    .locals 1

    .prologue
    .line 10180
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupVisible_:I

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10000
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->guid_:Ljava/lang/Object;

    .line 10001
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10002
    check-cast v1, Ljava/lang/String;

    .line 10010
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10004
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10006
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10007
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10008
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10010
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10032
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->luid_:Ljava/lang/Object;

    .line 10033
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10034
    check-cast v1, Ljava/lang/String;

    .line 10042
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10036
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10038
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10039
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10040
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10042
    goto :goto_0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10116
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->notes_:Ljava/lang/Object;

    .line 10117
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10118
    check-cast v1, Ljava/lang/String;

    .line 10126
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10120
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10122
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10123
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10124
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->notes_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10126
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10311
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->memoizedSerializedSize:I

    .line 10312
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10364
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 10314
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 10315
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 10316
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10319
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 10320
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10323
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 10324
    const/4 v2, 0x3

    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group;->version_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10327
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 10328
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->deleted_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10331
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 10332
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10335
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 10336
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getNotesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10339
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 10340
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getSystemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10343
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 10344
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupVisible_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10347
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 10348
    const/16 v2, 0x9

    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupOrder_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10351
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 10352
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getSourceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10355
    :cond_a
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 10356
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10359
    :cond_b
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 10360
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10363
    :cond_c
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->memoizedSerializedSize:I

    move v1, v0

    .line 10364
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10200
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->sourceId_:Ljava/lang/Object;

    .line 10201
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10202
    check-cast v1, Ljava/lang/String;

    .line 10210
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10204
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10206
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10207
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10208
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->sourceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10210
    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10148
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->systemId_:Ljava/lang/Object;

    .line 10149
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10150
    check-cast v1, Ljava/lang/String;

    .line 10158
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10152
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10154
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10155
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10156
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->systemId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10158
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10084
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->title_:Ljava/lang/Object;

    .line 10085
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10086
    check-cast v1, Ljava/lang/String;

    .line 10094
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10088
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10090
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10091
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10092
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Group;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10094
    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 10064
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->version_:I

    return v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 10229
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConflictType()Z
    .locals 2

    .prologue
    .line 10239
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeleted()Z
    .locals 2

    .prologue
    .line 10071
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroupOrder()Z
    .locals 2

    .prologue
    .line 10187
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroupVisible()Z
    .locals 2

    .prologue
    .line 10177
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9997
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 10029
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotes()Z
    .locals 2

    .prologue
    .line 10113
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceId()Z
    .locals 2

    .prologue
    .line 10197
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSystemId()Z
    .locals 2

    .prologue
    .line 10145
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 10081
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    .line 10061
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 10261
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->memoizedIsInitialized:B

    .line 10262
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 10265
    :goto_0
    return v1

    .line 10262
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10264
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public toBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1

    .prologue
    .line 10444
    invoke-static {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->newBuilder(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 10369
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10270
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getSerializedSize()I

    .line 10271
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10272
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10274
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10275
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10277
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 10278
    const/4 v0, 0x3

    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->version_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10280
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 10281
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->deleted_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10283
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 10284
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10286
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 10287
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getNotesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10289
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 10290
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getSystemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10292
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 10293
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupVisible_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10295
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 10296
    const/16 v0, 0x9

    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->groupOrder_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10298
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 10299
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group;->getSourceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10301
    :cond_9
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 10302
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10304
    :cond_a
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 10305
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Group;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10307
    :cond_b
    return-void
.end method
