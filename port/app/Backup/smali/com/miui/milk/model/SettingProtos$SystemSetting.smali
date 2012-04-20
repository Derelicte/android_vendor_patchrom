.class public final Lcom/miui/milk/model/SettingProtos$SystemSetting;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SettingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SettingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/SettingProtos$SystemSetting;


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
    .line 732
    new-instance v0, Lcom/miui/milk/model/SettingProtos$SystemSetting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->defaultInstance:Lcom/miui/milk/model/SettingProtos$SystemSetting;

    .line 733
    sget-object v0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->defaultInstance:Lcom/miui/milk/model/SettingProtos$SystemSetting;

    invoke-direct {v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->initFields()V

    .line 734
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 213
    iput-byte v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    .line 245
    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->memoizedSerializedSize:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;Lcom/miui/milk/model/SettingProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;-><init>(Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 213
    iput-byte v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    .line 245
    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->memoizedSerializedSize:I

    .line 45
    return-void
.end method

.method static synthetic access$302(Lcom/miui/milk/model/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/SettingProtos$SystemSetting;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/milk/model/SettingProtos$SystemSetting;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/milk/model/SettingProtos$SystemSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/SettingProtos$SystemSetting;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->defaultInstance:Lcom/miui/milk/model/SettingProtos$SystemSetting;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 79
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 80
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 82
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 85
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
    .line 110
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 111
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 112
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 114
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 117
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
    .line 142
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 143
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 144
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 146
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 149
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
    .line 174
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 175
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 176
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 178
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 181
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
    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 211
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 212
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1

    .prologue
    .line 351
    #calls: Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->create()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->access$100()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    .line 65
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 66
    check-cast v1, Ljava/lang/String;

    .line 74
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 68
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 70
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 74
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    .line 97
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 98
    check-cast v1, Ljava/lang/String;

    .line 106
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 100
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 102
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 106
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    .line 129
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 130
    check-cast v1, Ljava/lang/String;

    .line 138
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 132
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 134
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 138
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 247
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->memoizedSerializedSize:I

    .line 248
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 276
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 250
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 251
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 255
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 256
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 259
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 260
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 263
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 264
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 268
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 271
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 272
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 275
    :cond_6
    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->memoizedSerializedSize:I

    move v1, v0

    .line 276
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    .line 161
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 162
    check-cast v1, Ljava/lang/String;

    .line 170
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 164
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 166
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 170
    goto :goto_0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

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
    .line 199
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

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

    .line 61
    iget v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

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
    .line 93
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

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
    .line 125
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

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
    .line 157
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

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

    .line 215
    iget-byte v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->memoizedIsInitialized:B

    .line 216
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 219
    :goto_0
    return v1

    .line 216
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 218
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->memoizedIsInitialized:B

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
    .line 281
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

    .line 224
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getSerializedSize()I

    .line 225
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 228
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 231
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 232
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 234
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 237
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 238
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 240
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 241
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 243
    :cond_5
    return-void
.end method
