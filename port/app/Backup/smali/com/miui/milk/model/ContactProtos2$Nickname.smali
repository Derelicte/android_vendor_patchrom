.class public final Lcom/miui/milk/model/ContactProtos2$Nickname;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Nickname"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Nickname;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3460
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Nickname;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Nickname;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Nickname;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Nickname;

    .line 3461
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Nickname;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Nickname;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Nickname;->initFields()V

    .line 3462
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2965
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3111
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->memoizedIsInitialized:B

    .line 3134
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->memoizedSerializedSize:I

    .line 2966
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2960
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Nickname;-><init>(Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2967
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3111
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->memoizedIsInitialized:B

    .line 3134
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->memoizedSerializedSize:I

    .line 2967
    return-void
.end method

.method static synthetic access$4102(Lcom/miui/milk/model/ContactProtos2$Nickname;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2960
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/miui/milk/model/ContactProtos2$Nickname;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2960
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->type_:I

    return p1
.end method

.method static synthetic access$4302(Lcom/miui/milk/model/ContactProtos2$Nickname;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2960
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/miui/milk/model/ContactProtos2$Nickname;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2960
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Nickname;
    .locals 1

    .prologue
    .line 2971
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Nickname;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Nickname;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3095
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->label_:Ljava/lang/Object;

    .line 3096
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3097
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3099
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->label_:Ljava/lang/Object;

    .line 3102
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
    .line 3053
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->value_:Ljava/lang/Object;

    .line 3054
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3055
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3057
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->value_:Ljava/lang/Object;

    .line 3060
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
    .line 3107
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->value_:Ljava/lang/Object;

    .line 3108
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->type_:I

    .line 3109
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->label_:Ljava/lang/Object;

    .line 3110
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    .locals 1

    .prologue
    .line 3228
    #calls: Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->access$3900()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3081
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->label_:Ljava/lang/Object;

    .line 3082
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3083
    check-cast v1, Ljava/lang/String;

    .line 3091
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3085
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3087
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3088
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3089
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3091
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3136
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->memoizedSerializedSize:I

    .line 3137
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3153
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3139
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3140
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3141
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3144
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 3145
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3148
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 3149
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3152
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->memoizedSerializedSize:I

    move v1, v0

    .line 3153
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3071
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->type_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3039
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->value_:Ljava/lang/Object;

    .line 3040
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3041
    check-cast v1, Ljava/lang/String;

    .line 3049
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3043
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3045
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3046
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3047
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3049
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 3078
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 3068
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3036
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 3113
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->memoizedIsInitialized:B

    .line 3114
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 3117
    :goto_0
    return v1

    .line 3114
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3116
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->memoizedIsInitialized:B

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
    .line 3158
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3122
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getSerializedSize()I

    .line 3123
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3124
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3126
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3127
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3129
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Nickname;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3130
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3132
    :cond_2
    return-void
.end method
