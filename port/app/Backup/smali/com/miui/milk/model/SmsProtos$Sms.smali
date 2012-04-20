.class public final Lcom/miui/milk/model/SmsProtos$Sms;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SmsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/SmsProtos$Sms;

.field private static final serialVersionUID:J


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private body_:Ljava/lang/Object;

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private date_:J

.field private guid_:Ljava/lang/Object;

.field private locked_:Z

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private protocol_:I

.field private read_:Z

.field private replyPathPresent_:Z

.field private seen_:Z

.field private serverDate_:J

.field private serviceCenter_:Ljava/lang/Object;

.field private status_:I

.field private subject_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1541
    new-instance v0, Lcom/miui/milk/model/SmsProtos$Sms;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/SmsProtos$Sms;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/SmsProtos$Sms;->defaultInstance:Lcom/miui/milk/model/SmsProtos$Sms;

    .line 1542
    sget-object v0, Lcom/miui/milk/model/SmsProtos$Sms;->defaultInstance:Lcom/miui/milk/model/SmsProtos$Sms;

    invoke-direct {v0}, Lcom/miui/milk/model/SmsProtos$Sms;->initFields()V

    .line 1543
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/SmsProtos$Sms$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 87
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 528
    iput-byte v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->memoizedIsInitialized:B

    .line 593
    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->memoizedSerializedSize:I

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Lcom/miui/milk/model/SmsProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/miui/milk/model/SmsProtos$Sms;-><init>(Lcom/miui/milk/model/SmsProtos$Sms$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 89
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 528
    iput-byte v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->memoizedIsInitialized:B

    .line 593
    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->memoizedSerializedSize:I

    .line 89
    return-void
.end method

.method static synthetic access$1002(Lcom/miui/milk/model/SmsProtos$Sms;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->read_:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/SmsProtos$Sms;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->seen_:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/miui/milk/model/SmsProtos$Sms;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->status_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/miui/milk/model/SmsProtos$Sms;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serverDate_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serviceCenter_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/miui/milk/model/SmsProtos$Sms;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->protocol_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/miui/milk/model/SmsProtos$Sms;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->replyPathPresent_:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/miui/milk/model/SmsProtos$Sms;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->locked_:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/miui/milk/model/SmsProtos$Sms;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/miui/milk/model/SmsProtos$Sms;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/miui/milk/model/SmsProtos$Sms;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/SmsProtos$Sms;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->type_:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->subject_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->body_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/milk/model/SmsProtos$Sms;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->date_:J

    return-wide p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->address_:Ljava/lang/Object;

    .line 303
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 304
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 306
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->address_:Ljava/lang/Object;

    .line 309
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

.method private getBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->body_:Ljava/lang/Object;

    .line 367
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 368
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 370
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->body_:Ljava/lang/Object;

    .line 373
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

.method public static getDefaultInstance()Lcom/miui/milk/model/SmsProtos$Sms;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/miui/milk/model/SmsProtos$Sms;->defaultInstance:Lcom/miui/milk/model/SmsProtos$Sms;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->guid_:Ljava/lang/Object;

    .line 229
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 230
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 232
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->guid_:Ljava/lang/Object;

    .line 235
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
    .line 260
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->luid_:Ljava/lang/Object;

    .line 261
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 262
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 264
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->luid_:Ljava/lang/Object;

    .line 267
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

.method private getServiceCenterBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serviceCenter_:Ljava/lang/Object;

    .line 449
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 450
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 452
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serviceCenter_:Ljava/lang/Object;

    .line 455
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

.method private getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->subject_:Ljava/lang/Object;

    .line 335
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 336
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 338
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->subject_:Ljava/lang/Object;

    .line 341
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
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 510
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->guid_:Ljava/lang/Object;

    .line 511
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->luid_:Ljava/lang/Object;

    .line 512
    iput v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->type_:I

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->address_:Ljava/lang/Object;

    .line 514
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->subject_:Ljava/lang/Object;

    .line 515
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->body_:Ljava/lang/Object;

    .line 516
    iput-wide v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->date_:J

    .line 517
    iput-boolean v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->read_:Z

    .line 518
    iput-boolean v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->seen_:Z

    .line 519
    iput v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->status_:I

    .line 520
    iput-wide v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serverDate_:J

    .line 521
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serviceCenter_:Ljava/lang/Object;

    .line 522
    iput v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->protocol_:I

    .line 523
    iput-boolean v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->replyPathPresent_:Z

    .line 524
    iput-boolean v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->locked_:Z

    .line 525
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 526
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 527
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1

    .prologue
    .line 745
    #calls: Lcom/miui/milk/model/SmsProtos$Sms$Builder;->create()Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->access$100()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 748
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms;->newBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->mergeFrom(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->address_:Ljava/lang/Object;

    .line 289
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 290
    check-cast v1, Ljava/lang/String;

    .line 298
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 292
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 294
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->address_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 298
    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 352
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->body_:Ljava/lang/Object;

    .line 353
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 354
    check-cast v1, Ljava/lang/String;

    .line 362
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 356
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 358
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->body_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 362
    goto :goto_0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->date_:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->guid_:Ljava/lang/Object;

    .line 215
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 216
    check-cast v1, Ljava/lang/String;

    .line 224
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 218
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 220
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 224
    goto :goto_0
.end method

.method public getLocked()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->locked_:Z

    return v0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->luid_:Ljava/lang/Object;

    .line 247
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 248
    check-cast v1, Ljava/lang/String;

    .line 256
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 250
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 252
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 256
    goto :goto_0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->protocol_:I

    return v0
.end method

.method public getRead()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->read_:Z

    return v0
.end method

.method public getReplyPathPresent()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->replyPathPresent_:Z

    return v0
.end method

.method public getSeen()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->seen_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const v7, 0x8000

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 595
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->memoizedSerializedSize:I

    .line 596
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 668
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 598
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 599
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 600
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 603
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 604
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 607
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 608
    const/4 v2, 0x3

    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->type_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 611
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 612
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 615
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 616
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 619
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 620
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 623
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 624
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->date_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 627
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 628
    iget-boolean v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->read_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 631
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 632
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->seen_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 635
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 636
    const/16 v2, 0xa

    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->status_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 639
    :cond_a
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 640
    const/16 v2, 0xb

    iget-wide v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serverDate_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 643
    :cond_b
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 644
    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 647
    :cond_c
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d

    .line 648
    const/16 v2, 0xd

    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->protocol_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 651
    :cond_d
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e

    .line 652
    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->replyPathPresent_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 655
    :cond_e
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_f

    .line 656
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->locked_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 659
    :cond_f
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_10

    .line 660
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 663
    :cond_10
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 664
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 667
    :cond_11
    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->memoizedSerializedSize:I

    move v1, v0

    .line 668
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getServerDate()J
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serverDate_:J

    return-wide v0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serviceCenter_:Ljava/lang/Object;

    .line 435
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 436
    check-cast v1, Ljava/lang/String;

    .line 444
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 438
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 440
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serviceCenter_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 444
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->status_:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->subject_:Ljava/lang/Object;

    .line 321
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 322
    check-cast v1, Ljava/lang/String;

    .line 330
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 324
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 326
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$Sms;->subject_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 330
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->type_:I

    return v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 493
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasBody()Z
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasConflictType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 503
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDate()Z
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 211
    iget v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocked()Z
    .locals 2

    .prologue
    .line 483
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasProtocol()Z
    .locals 2

    .prologue
    .line 463
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRead()Z
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasReplyPathPresent()Z
    .locals 2

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeen()Z
    .locals 2

    .prologue
    .line 401
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasServerDate()Z
    .locals 2

    .prologue
    .line 421
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasServiceCenter()Z
    .locals 2

    .prologue
    .line 431
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasSubject()Z
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

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

    .line 530
    iget-byte v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->memoizedIsInitialized:B

    .line 531
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 534
    :goto_0
    return v1

    .line 531
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 533
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public toBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1

    .prologue
    .line 750
    invoke-static {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->newBuilder(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

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
    .line 675
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x8000

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 539
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getSerializedSize()I

    .line 540
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 543
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 544
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 546
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 547
    const/4 v0, 0x3

    iget v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 549
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 550
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 552
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 553
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 555
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 556
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 558
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 559
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->date_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 561
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 562
    iget-boolean v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->read_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 564
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 565
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->seen_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 567
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 568
    const/16 v0, 0xa

    iget v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 570
    :cond_9
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 571
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->serverDate_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 573
    :cond_a
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 574
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 576
    :cond_b
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 577
    const/16 v0, 0xd

    iget v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->protocol_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 579
    :cond_c
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 580
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->replyPathPresent_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 582
    :cond_d
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 583
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->locked_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 585
    :cond_e
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_f

    .line 586
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 588
    :cond_f
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 589
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$Sms;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 591
    :cond_10
    return-void
.end method
