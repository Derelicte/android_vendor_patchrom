.class public final Lcom/miui/milk/model/ContactProtos2$Name;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Name;


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private familyName_:Ljava/lang/Object;

.field private givenName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private middleName_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 604
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Name;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Name;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Name;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Name;

    .line 605
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Name;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Name;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Name;->initFields()V

    .line 606
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Name$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 183
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->memoizedIsInitialized:B

    .line 209
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Name$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Name;-><init>(Lcom/miui/milk/model/ContactProtos2$Name$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 183
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->memoizedIsInitialized:B

    .line 209
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic access$302(Lcom/miui/milk/model/ContactProtos2$Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/ContactProtos2$Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->givenName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/ContactProtos2$Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->middleName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/ContactProtos2$Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->familyName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/ContactProtos2$Name;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Name;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Name;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Name;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->displayName_:Ljava/lang/Object;

    .line 71
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 72
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 74
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->displayName_:Ljava/lang/Object;

    .line 77
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

.method private getFamilyNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->familyName_:Ljava/lang/Object;

    .line 167
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 168
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 170
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->familyName_:Ljava/lang/Object;

    .line 173
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

.method private getGivenNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->givenName_:Ljava/lang/Object;

    .line 103
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 104
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 106
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->givenName_:Ljava/lang/Object;

    .line 109
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

.method private getMiddleNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->middleName_:Ljava/lang/Object;

    .line 135
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 136
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 138
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->middleName_:Ljava/lang/Object;

    .line 141
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
    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->displayName_:Ljava/lang/Object;

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->givenName_:Ljava/lang/Object;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->middleName_:Ljava/lang/Object;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->familyName_:Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 1

    .prologue
    .line 307
    #calls: Lcom/miui/milk/model/ContactProtos2$Name$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->access$100()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->displayName_:Ljava/lang/Object;

    .line 57
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 66
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 60
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 62
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Name;->displayName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 66
    goto :goto_0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->familyName_:Ljava/lang/Object;

    .line 153
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 154
    check-cast v1, Ljava/lang/String;

    .line 162
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 156
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 158
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Name;->familyName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 162
    goto :goto_0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->givenName_:Ljava/lang/Object;

    .line 89
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 98
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 92
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 94
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Name;->givenName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 98
    goto :goto_0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->middleName_:Ljava/lang/Object;

    .line 121
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 122
    check-cast v1, Ljava/lang/String;

    .line 130
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 124
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 126
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Name;->middleName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 130
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 211
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->memoizedSerializedSize:I

    .line 212
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 232
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 214
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 215
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 219
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getGivenNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 223
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 224
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getMiddleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 227
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 228
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getFamilyNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 231
    :cond_4
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->memoizedSerializedSize:I

    move v1, v0

    .line 232
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFamilyName()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

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

.method public hasGivenName()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

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

.method public hasMiddleName()Z
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

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

    .line 185
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->memoizedIsInitialized:B

    .line 186
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 189
    :goto_0
    return v1

    .line 186
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 188
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Name;->memoizedIsInitialized:B

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
    .line 237
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

    .line 194
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getSerializedSize()I

    .line 195
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 198
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getGivenNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 201
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 202
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getMiddleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 204
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name;->getFamilyNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 207
    :cond_3
    return-void
.end method
