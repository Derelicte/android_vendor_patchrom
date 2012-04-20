.class public final Lcom/miui/milk/model/ContactProtos2$Organization;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organization"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Organization;


# instance fields
.field private bitField0_:I

.field private department_:Ljava/lang/Object;

.field private jobDescription_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private officeLocation_:Ljava/lang/Object;

.field private symbol_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4761
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Organization;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Organization;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Organization;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Organization;

    .line 4762
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Organization;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Organization;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Organization;->initFields()V

    .line 4763
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Organization$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3825
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4127
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->memoizedIsInitialized:B

    .line 4165
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->memoizedSerializedSize:I

    .line 3826
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Organization$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Organization;-><init>(Lcom/miui/milk/model/ContactProtos2$Organization$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3827
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4127
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->memoizedIsInitialized:B

    .line 4165
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->memoizedSerializedSize:I

    .line 3827
    return-void
.end method

.method static synthetic access$5302(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/miui/milk/model/ContactProtos2$Organization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->type_:I

    return p1
.end method

.method static synthetic access$5502(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->department_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->jobDescription_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->symbol_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->officeLocation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/miui/milk/model/ContactProtos2$Organization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3820
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Organization;
    .locals 1

    .prologue
    .line 3831
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Organization;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Organization;

    return-object v0
.end method

.method private getDepartmentBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4010
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->department_:Ljava/lang/Object;

    .line 4011
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4012
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4014
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->department_:Ljava/lang/Object;

    .line 4017
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

.method private getJobDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4042
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->jobDescription_:Ljava/lang/Object;

    .line 4043
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4044
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4046
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->jobDescription_:Ljava/lang/Object;

    .line 4049
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

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3946
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->label_:Ljava/lang/Object;

    .line 3947
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3948
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3950
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->label_:Ljava/lang/Object;

    .line 3953
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

.method private getOfficeLocationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4106
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->officeLocation_:Ljava/lang/Object;

    .line 4107
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4108
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4110
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->officeLocation_:Ljava/lang/Object;

    .line 4113
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

.method private getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4074
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->symbol_:Ljava/lang/Object;

    .line 4075
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4076
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4078
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->symbol_:Ljava/lang/Object;

    .line 4081
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
    .line 3978
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->title_:Ljava/lang/Object;

    .line 3979
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3980
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3982
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->title_:Ljava/lang/Object;

    .line 3985
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
    .line 3904
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->value_:Ljava/lang/Object;

    .line 3905
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3906
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3908
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->value_:Ljava/lang/Object;

    .line 3911
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
    .line 4118
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->value_:Ljava/lang/Object;

    .line 4119
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->type_:I

    .line 4120
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->label_:Ljava/lang/Object;

    .line 4121
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->title_:Ljava/lang/Object;

    .line 4122
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->department_:Ljava/lang/Object;

    .line 4123
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->jobDescription_:Ljava/lang/Object;

    .line 4124
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->symbol_:Ljava/lang/Object;

    .line 4125
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->officeLocation_:Ljava/lang/Object;

    .line 4126
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1

    .prologue
    .line 4279
    #calls: Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->access$5100()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDepartment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3996
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->department_:Ljava/lang/Object;

    .line 3997
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3998
    check-cast v1, Ljava/lang/String;

    .line 4006
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4000
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4002
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4003
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4004
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->department_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4006
    goto :goto_0
.end method

.method public getJobDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4028
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->jobDescription_:Ljava/lang/Object;

    .line 4029
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4030
    check-cast v1, Ljava/lang/String;

    .line 4038
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4032
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4034
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4035
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4036
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->jobDescription_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4038
    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3932
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->label_:Ljava/lang/Object;

    .line 3933
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3934
    check-cast v1, Ljava/lang/String;

    .line 3942
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3936
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3938
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3939
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3940
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3942
    goto :goto_0
.end method

.method public getOfficeLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4092
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->officeLocation_:Ljava/lang/Object;

    .line 4093
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4094
    check-cast v1, Ljava/lang/String;

    .line 4102
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4096
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4098
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4099
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4100
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->officeLocation_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4102
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4167
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->memoizedSerializedSize:I

    .line 4168
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4204
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4170
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4171
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4172
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4175
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4176
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4179
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4180
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4183
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 4184
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4187
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 4188
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getDepartmentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4191
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 4192
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getJobDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4195
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 4196
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4199
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 4200
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getOfficeLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4203
    :cond_8
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->memoizedSerializedSize:I

    move v1, v0

    .line 4204
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4060
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->symbol_:Ljava/lang/Object;

    .line 4061
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4062
    check-cast v1, Ljava/lang/String;

    .line 4070
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4064
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4066
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4067
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4068
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->symbol_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4070
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3964
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->title_:Ljava/lang/Object;

    .line 3965
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3966
    check-cast v1, Ljava/lang/String;

    .line 3974
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3968
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3970
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3971
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3972
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3974
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3922
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->type_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3890
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->value_:Ljava/lang/Object;

    .line 3891
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3892
    check-cast v1, Ljava/lang/String;

    .line 3900
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3894
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3896
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3897
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3898
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3900
    goto :goto_0
.end method

.method public hasDepartment()Z
    .locals 2

    .prologue
    .line 3993
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

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

.method public hasJobDescription()Z
    .locals 2

    .prologue
    .line 4025
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 3929
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

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

.method public hasOfficeLocation()Z
    .locals 2

    .prologue
    .line 4089
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

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

.method public hasSymbol()Z
    .locals 2

    .prologue
    .line 4057
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

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
    .line 3961
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 3919
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

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

    .line 3887
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

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

    .line 4129
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->memoizedIsInitialized:B

    .line 4130
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 4133
    :goto_0
    return v1

    .line 4130
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4132
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->memoizedIsInitialized:B

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
    .line 4209
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

    .line 4138
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getSerializedSize()I

    .line 4139
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4140
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4142
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4143
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4145
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4146
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4148
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 4149
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4151
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 4152
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getDepartmentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4154
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 4155
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getJobDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4157
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 4158
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4160
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 4161
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization;->getOfficeLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4163
    :cond_7
    return-void
.end method
