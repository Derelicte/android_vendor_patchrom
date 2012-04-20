.class public final Lcom/miui/milk/model/SettingProtos$SecureSetting;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SettingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SettingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecureSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/SettingProtos$SecureSetting;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1460
    new-instance v0, Lcom/miui/milk/model/SettingProtos$SecureSetting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/SettingProtos$SecureSetting;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->defaultInstance:Lcom/miui/milk/model/SettingProtos$SecureSetting;

    .line 1461
    sget-object v0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->defaultInstance:Lcom/miui/milk/model/SettingProtos$SecureSetting;

    invoke-direct {v0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->initFields()V

    .line 1462
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 771
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 941
    iput-byte v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    .line 973
    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->memoizedSerializedSize:I

    .line 772
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;Lcom/miui/milk/model/SettingProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/miui/milk/model/SettingProtos$SecureSetting;-><init>(Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 773
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 941
    iput-byte v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    .line 973
    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->memoizedSerializedSize:I

    .line 773
    return-void
.end method

.method static synthetic access$1302(Lcom/miui/milk/model/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/miui/milk/model/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/miui/milk/model/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/miui/milk/model/SettingProtos$SecureSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/miui/milk/model/SettingProtos$SecureSetting;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/miui/milk/model/SettingProtos$SecureSetting;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/miui/milk/model/SettingProtos$SecureSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    iput p1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/SettingProtos$SecureSetting;
    .locals 1

    .prologue
    .line 777
    sget-object v0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->defaultInstance:Lcom/miui/milk/model/SettingProtos$SecureSetting;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 806
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 807
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 808
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 810
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 813
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
    .line 838
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 839
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 840
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 842
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 845
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 870
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 871
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 872
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 874
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 877
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

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 902
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 903
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 904
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 906
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 909
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
    .locals 1

    .prologue
    .line 934
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 936
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 937
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 938
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 939
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 940
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;
    .locals 1

    .prologue
    .line 1079
    #calls: Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;->create()Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;->access$1100()Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 792
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    .line 793
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 794
    check-cast v1, Ljava/lang/String;

    .line 802
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 796
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 798
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 800
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 802
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 824
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    .line 825
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 826
    check-cast v1, Ljava/lang/String;

    .line 834
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 828
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 830
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 832
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 834
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 856
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    .line 857
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 858
    check-cast v1, Ljava/lang/String;

    .line 866
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 860
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 862
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 866
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 975
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->memoizedSerializedSize:I

    .line 976
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1004
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 978
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 979
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 980
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 983
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 984
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 987
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 988
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 991
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 992
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 995
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 996
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 999
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1000
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1003
    :cond_6
    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->memoizedSerializedSize:I

    move v1, v0

    .line 1004
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 888
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    .line 889
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 890
    check-cast v1, Ljava/lang/String;

    .line 898
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 892
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 894
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 896
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 898
    goto :goto_0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 917
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

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

.method public hasConflictType()Z
    .locals 2

    .prologue
    .line 927
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

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

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 789
    iget v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

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
    .line 821
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 853
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    .line 885
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 943
    iget-byte v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->memoizedIsInitialized:B

    .line 944
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 947
    :goto_0
    return v1

    .line 944
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 946
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->memoizedIsInitialized:B

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
    .line 1009
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 952
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getSerializedSize()I

    .line 953
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 954
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 956
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 957
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 959
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 960
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 962
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 963
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 965
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 966
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 968
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 969
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SecureSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 971
    :cond_5
    return-void
.end method
