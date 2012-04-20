.class public final Lcom/miui/milk/model/MmsProtos$Pdu;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MmsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pdu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/MmsProtos$Pdu;

.field private static final serialVersionUID:J


# instance fields
.field private addrs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MmsProtos$PduAddr;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private contentClass_:I

.field private contentLocation_:Ljava/lang/Object;

.field private contentType_:Ljava/lang/Object;

.field private date_:J

.field private deliveryReport_:I

.field private deliveryTime_:J

.field private expiry_:J

.field private guid_:Ljava/lang/Object;

.field private locked_:Z

.field private luid_:Ljava/lang/Object;

.field private mId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mmsVersion_:I

.field private msgBox_:I

.field private msgClass_:Ljava/lang/Object;

.field private msgSize_:I

.field private msgType_:I

.field private pduParts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MmsProtos$PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private priority_:I

.field private readReport_:I

.field private readStatus_:I

.field private read_:Z

.field private reportAllowed_:Z

.field private responseStatus_:I

.field private responseText_:Ljava/lang/Object;

.field private retrieveStatus_:I

.field private retrieveTextCharset_:I

.field private retrieveText_:Ljava/lang/Object;

.field private seen_:Z

.field private serverDate_:J

.field private status_:I

.field private subjectCharset_:I

.field private subject_:Ljava/lang/Object;

.field private transactionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2720
    new-instance v0, Lcom/miui/milk/model/MmsProtos$Pdu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/MmsProtos$Pdu;->defaultInstance:Lcom/miui/milk/model/MmsProtos$Pdu;

    .line 2721
    sget-object v0, Lcom/miui/milk/model/MmsProtos$Pdu;->defaultInstance:Lcom/miui/milk/model/MmsProtos$Pdu;

    invoke-direct {v0}, Lcom/miui/milk/model/MmsProtos$Pdu;->initFields()V

    .line 2722
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 159
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 791
    iput-byte v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->memoizedIsInitialized:B

    .line 907
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->memoizedSerializedSize:I

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;Lcom/miui/milk/model/MmsProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/miui/milk/model/MmsProtos$Pdu;-><init>(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 791
    iput-byte v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->memoizedIsInitialized:B

    .line 907
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->memoizedSerializedSize:I

    .line 161
    return-void
.end method

.method static synthetic access$1002(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subject_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subjectCharset_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentLocation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/miui/milk/model/MmsProtos$Pdu;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->expiry_:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgClass_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgType_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mmsVersion_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgSize_:I

    return p1
.end method

.method static synthetic access$1902(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->priority_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readReport_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/miui/milk/model/MmsProtos$Pdu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->reportAllowed_:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseStatus_:I

    return p1
.end method

.method static synthetic access$2302(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->status_:I

    return p1
.end method

.method static synthetic access$2402(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->transactionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveStatus_:I

    return p1
.end method

.method static synthetic access$2602(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveTextCharset_:I

    return p1
.end method

.method static synthetic access$2802(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readStatus_:I

    return p1
.end method

.method static synthetic access$2902(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentClass_:I

    return p1
.end method

.method static synthetic access$3002(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/miui/milk/model/MmsProtos$Pdu;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryTime_:J

    return-wide p1
.end method

.method static synthetic access$3202(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryReport_:I

    return p1
.end method

.method static synthetic access$3302(Lcom/miui/milk/model/MmsProtos$Pdu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->locked_:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/miui/milk/model/MmsProtos$Pdu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->seen_:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    return p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/MmsProtos$Pdu;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->date_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/MmsProtos$Pdu;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->serverDate_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/MmsProtos$Pdu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgBox_:I

    return p1
.end method

.method static synthetic access$802(Lcom/miui/milk/model/MmsProtos$Pdu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->read_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mId_:Ljava/lang/Object;

    return-object p1
.end method

.method private getContentLocationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentLocation_:Ljava/lang/Object;

    .line 405
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 406
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 408
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentLocation_:Ljava/lang/Object;

    .line 411
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

.method private getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentType_:Ljava/lang/Object;

    .line 373
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 374
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 376
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentType_:Ljava/lang/Object;

    .line 379
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

.method public static getDefaultInstance()Lcom/miui/milk/model/MmsProtos$Pdu;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/miui/milk/model/MmsProtos$Pdu;->defaultInstance:Lcom/miui/milk/model/MmsProtos$Pdu;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->guid_:Ljava/lang/Object;

    .line 195
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 196
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 198
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->guid_:Ljava/lang/Object;

    .line 201
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
    .line 226
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->luid_:Ljava/lang/Object;

    .line 227
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 228
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 230
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->luid_:Ljava/lang/Object;

    .line 233
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

.method private getMIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mId_:Ljava/lang/Object;

    .line 299
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 300
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 302
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mId_:Ljava/lang/Object;

    .line 305
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

.method private getMsgClassBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 446
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgClass_:Ljava/lang/Object;

    .line 447
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 448
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 450
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgClass_:Ljava/lang/Object;

    .line 453
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

.method private getResponseTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 662
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseText_:Ljava/lang/Object;

    .line 663
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 664
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 666
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseText_:Ljava/lang/Object;

    .line 669
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

.method private getRetrieveTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 600
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveText_:Ljava/lang/Object;

    .line 601
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 602
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 604
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveText_:Ljava/lang/Object;

    .line 607
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
    .line 330
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subject_:Ljava/lang/Object;

    .line 331
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 332
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 334
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subject_:Ljava/lang/Object;

    .line 337
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

.method private getTransactionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->transactionId_:Ljava/lang/Object;

    .line 559
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 560
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 562
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->transactionId_:Ljava/lang/Object;

    .line 565
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

    .line 756
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->guid_:Ljava/lang/Object;

    .line 757
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->luid_:Ljava/lang/Object;

    .line 758
    iput-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->date_:J

    .line 759
    iput-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->serverDate_:J

    .line 760
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgBox_:I

    .line 761
    iput-boolean v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->read_:Z

    .line 762
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mId_:Ljava/lang/Object;

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subject_:Ljava/lang/Object;

    .line 764
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subjectCharset_:I

    .line 765
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentType_:Ljava/lang/Object;

    .line 766
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentLocation_:Ljava/lang/Object;

    .line 767
    iput-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->expiry_:J

    .line 768
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgClass_:Ljava/lang/Object;

    .line 769
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgType_:I

    .line 770
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mmsVersion_:I

    .line 771
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgSize_:I

    .line 772
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->priority_:I

    .line 773
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readReport_:I

    .line 774
    iput-boolean v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->reportAllowed_:Z

    .line 775
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseStatus_:I

    .line 776
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->status_:I

    .line 777
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->transactionId_:Ljava/lang/Object;

    .line 778
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveStatus_:I

    .line 779
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveText_:Ljava/lang/Object;

    .line 780
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveTextCharset_:I

    .line 781
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readStatus_:I

    .line 782
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentClass_:I

    .line 783
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseText_:Ljava/lang/Object;

    .line 784
    iput-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryTime_:J

    .line 785
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryReport_:I

    .line 786
    iput-boolean v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->locked_:Z

    .line 787
    iput-boolean v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->seen_:Z

    .line 788
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    .line 789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    .line 790
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1

    .prologue
    .line 1127
    #calls: Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->create()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->access$100()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddrs(I)Lcom/miui/milk/model/MmsProtos$PduAddr;
    .locals 1
    .parameter "index"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/MmsProtos$PduAddr;

    return-object v0
.end method

.method public getAddrsCount()I
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddrsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MmsProtos$PduAddr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    return-object v0
.end method

.method public getContentClass()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentClass_:I

    return v0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentLocation_:Ljava/lang/Object;

    .line 391
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 392
    check-cast v1, Ljava/lang/String;

    .line 400
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 394
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 396
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentLocation_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 400
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentType_:Ljava/lang/Object;

    .line 359
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 360
    check-cast v1, Ljava/lang/String;

    .line 368
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 362
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 364
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 368
    goto :goto_0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->date_:J

    return-wide v0
.end method

.method public getDeliveryReport()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryReport_:I

    return v0
.end method

.method public getDeliveryTime()J
    .locals 2

    .prologue
    .line 680
    iget-wide v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryTime_:J

    return-wide v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->expiry_:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->guid_:Ljava/lang/Object;

    .line 181
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 182
    check-cast v1, Ljava/lang/String;

    .line 190
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 184
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 186
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 190
    goto :goto_0
.end method

.method public getLocked()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->locked_:Z

    return v0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->luid_:Ljava/lang/Object;

    .line 213
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 214
    check-cast v1, Ljava/lang/String;

    .line 222
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 216
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 218
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 222
    goto :goto_0
.end method

.method public getMId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mId_:Ljava/lang/Object;

    .line 285
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 286
    check-cast v1, Ljava/lang/String;

    .line 294
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 288
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 290
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 294
    goto :goto_0
.end method

.method public getMmsVersion()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mmsVersion_:I

    return v0
.end method

.method public getMsgBox()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgBox_:I

    return v0
.end method

.method public getMsgClass()Ljava/lang/String;
    .locals 4

    .prologue
    .line 432
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgClass_:Ljava/lang/Object;

    .line 433
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 434
    check-cast v1, Ljava/lang/String;

    .line 442
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 436
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 438
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgClass_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 442
    goto :goto_0
.end method

.method public getMsgSize()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgSize_:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgType_:I

    return v0
.end method

.method public getPduParts(I)Lcom/miui/milk/model/MmsProtos$PduPart;
    .locals 1
    .parameter "index"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/MmsProtos$PduPart;

    return-object v0
.end method

.method public getPduPartsCount()I
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->priority_:I

    return v0
.end method

.method public getRead()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->read_:Z

    return v0
.end method

.method public getReadReport()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readReport_:I

    return v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readStatus_:I

    return v0
.end method

.method public getReportAllowed()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->reportAllowed_:Z

    return v0
.end method

.method public getResponseStatus()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseStatus_:I

    return v0
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 648
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseText_:Ljava/lang/Object;

    .line 649
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 650
    check-cast v1, Ljava/lang/String;

    .line 658
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 652
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 654
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseText_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 658
    goto :goto_0
.end method

.method public getRetrieveStatus()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveStatus_:I

    return v0
.end method

.method public getRetrieveText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 586
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveText_:Ljava/lang/Object;

    .line 587
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 588
    check-cast v1, Ljava/lang/String;

    .line 596
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 590
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 592
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveText_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 596
    goto :goto_0
.end method

.method public getRetrieveTextCharset()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveTextCharset_:I

    return v0
.end method

.method public getSeen()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->seen_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v6, -0x8000

    .line 909
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->memoizedSerializedSize:I

    .line 910
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1050
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 912
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 913
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 914
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 917
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 918
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 921
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_3

    .line 922
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->date_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 925
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_4

    .line 926
    iget-wide v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->serverDate_:J

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 929
    :cond_4
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 930
    const/4 v3, 0x5

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgBox_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 933
    :cond_5
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 934
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->read_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 937
    :cond_6
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 938
    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 941
    :cond_7
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 942
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 945
    :cond_8
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 946
    const/16 v3, 0x9

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subjectCharset_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 949
    :cond_9
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a

    .line 950
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 953
    :cond_a
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_b

    .line 954
    const/16 v3, 0xb

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 957
    :cond_b
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_c

    .line 958
    const/16 v3, 0xc

    iget-wide v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->expiry_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 961
    :cond_c
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_d

    .line 962
    const/16 v3, 0xd

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgClassBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 965
    :cond_d
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_e

    .line 966
    const/16 v3, 0xe

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgType_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 969
    :cond_e
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_f

    .line 970
    const/16 v3, 0xf

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mmsVersion_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 973
    :cond_f
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    const v4, 0x8000

    if-ne v3, v4, :cond_10

    .line 974
    const/16 v3, 0x10

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgSize_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 977
    :cond_10
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 978
    const/16 v3, 0x11

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->priority_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 981
    :cond_11
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x2

    and-int/2addr v3, v4

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_12

    .line 982
    const/16 v3, 0x12

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readReport_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 985
    :cond_12
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_13

    .line 986
    const/16 v3, 0x13

    iget-boolean v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->reportAllowed_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 989
    :cond_13
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    const/high16 v4, 0x8

    if-ne v3, v4, :cond_14

    .line 990
    const/16 v3, 0x14

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseStatus_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 993
    :cond_14
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_15

    .line 994
    const/16 v3, 0x15

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->status_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 997
    :cond_15
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_16

    .line 998
    const/16 v3, 0x16

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getTransactionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1001
    :cond_16
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_17

    .line 1002
    const/16 v3, 0x17

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveStatus_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1005
    :cond_17
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x80

    and-int/2addr v3, v4

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_18

    .line 1006
    const/16 v3, 0x18

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1009
    :cond_18
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x100

    and-int/2addr v3, v4

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_19

    .line 1010
    const/16 v3, 0x19

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveTextCharset_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1013
    :cond_19
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x200

    and-int/2addr v3, v4

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_1a

    .line 1014
    const/16 v3, 0x1a

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readStatus_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1017
    :cond_1a
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x400

    and-int/2addr v3, v4

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_1b

    .line 1018
    const/16 v3, 0x1b

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentClass_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1021
    :cond_1b
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x800

    and-int/2addr v3, v4

    const/high16 v4, 0x800

    if-ne v3, v4, :cond_1c

    .line 1022
    const/16 v3, 0x1c

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1025
    :cond_1c
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_1d

    .line 1026
    const/16 v3, 0x1d

    iget-wide v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryTime_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1029
    :cond_1d
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    const/high16 v4, 0x2000

    if-ne v3, v4, :cond_1e

    .line 1030
    const/16 v3, 0x1e

    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryReport_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1033
    :cond_1e
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    const/high16 v4, 0x4000

    if-ne v3, v4, :cond_1f

    .line 1034
    const/16 v3, 0x1f

    iget-boolean v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->locked_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1037
    :cond_1f
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_20

    .line 1038
    const/16 v3, 0x20

    iget-boolean v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->seen_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1041
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 1042
    const/16 v4, 0x21

    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1045
    :cond_21
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 1046
    const/16 v4, 0x22

    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1049
    :cond_22
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->memoizedSerializedSize:I

    move v2, v1

    .line 1050
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getServerDate()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->serverDate_:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->status_:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subject_:Ljava/lang/Object;

    .line 317
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 318
    check-cast v1, Ljava/lang/String;

    .line 326
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 320
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 322
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subject_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 326
    goto :goto_0
.end method

.method public getSubjectCharset()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subjectCharset_:I

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 544
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->transactionId_:Ljava/lang/Object;

    .line 545
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 546
    check-cast v1, Ljava/lang/String;

    .line 554
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 548
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 550
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->transactionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 554
    goto :goto_0
.end method

.method public hasContentClass()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400

    .line 635
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentLocation()Z
    .locals 2

    .prologue
    .line 387
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasContentType()Z
    .locals 2

    .prologue
    .line 355
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasDate()Z
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasDeliveryReport()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 687
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeliveryTime()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000

    .line 677
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpiry()Z
    .locals 2

    .prologue
    .line 419
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 177
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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
    const/high16 v1, 0x4000

    .line 697
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 209
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasMId()Z
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasMmsVersion()Z
    .locals 2

    .prologue
    .line 471
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasMsgBox()Z
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasMsgClass()Z
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasMsgSize()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 481
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsgType()Z
    .locals 2

    .prologue
    .line 461
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasPriority()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 491
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 271
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasReadReport()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 501
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReadStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200

    .line 625
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReportAllowed()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 511
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 521
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseText()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800

    .line 645
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRetrieveStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 573
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRetrieveText()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 583
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRetrieveTextCharset()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 615
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

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
    const/high16 v1, -0x8000

    .line 707
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 251
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 531
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 313
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasSubjectCharset()Z
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

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

.method public hasTransactionId()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 541
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v0, v1

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

    .line 793
    iget-byte v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->memoizedIsInitialized:B

    .line 794
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 797
    :goto_0
    return v1

    .line 794
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 796
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->memoizedIsInitialized:B

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
    .line 1057
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/high16 v4, -0x8000

    .line 802
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSerializedSize()I

    .line 803
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 804
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 806
    :cond_0
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 807
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 809
    :cond_1
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 810
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->date_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 812
    :cond_2
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_3

    .line 813
    iget-wide v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->serverDate_:J

    invoke-virtual {p1, v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 815
    :cond_3
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 816
    const/4 v1, 0x5

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgBox_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 818
    :cond_4
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 819
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->read_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 821
    :cond_5
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 822
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 824
    :cond_6
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 825
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 827
    :cond_7
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 828
    const/16 v1, 0x9

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->subjectCharset_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 830
    :cond_8
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 831
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 833
    :cond_9
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_a

    .line 834
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 836
    :cond_a
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_b

    .line 837
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->expiry_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 839
    :cond_b
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_c

    .line 840
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgClassBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 842
    :cond_c
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_d

    .line 843
    const/16 v1, 0xe

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 845
    :cond_d
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_e

    .line 846
    const/16 v1, 0xf

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->mmsVersion_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 848
    :cond_e
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_f

    .line 849
    const/16 v1, 0x10

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->msgSize_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 851
    :cond_f
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 852
    const/16 v1, 0x11

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->priority_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 854
    :cond_10
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 855
    const/16 v1, 0x12

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readReport_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 857
    :cond_11
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 858
    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->reportAllowed_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 860
    :cond_12
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_13

    .line 861
    const/16 v1, 0x14

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->responseStatus_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 863
    :cond_13
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_14

    .line 864
    const/16 v1, 0x15

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->status_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 866
    :cond_14
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_15

    .line 867
    const/16 v1, 0x16

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getTransactionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 869
    :cond_15
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_16

    .line 870
    const/16 v1, 0x17

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveStatus_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 872
    :cond_16
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    const/high16 v2, 0x80

    if-ne v1, v2, :cond_17

    .line 873
    const/16 v1, 0x18

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 875
    :cond_17
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_18

    .line 876
    const/16 v1, 0x19

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveTextCharset_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 878
    :cond_18
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    const/high16 v2, 0x200

    if-ne v1, v2, :cond_19

    .line 879
    const/16 v1, 0x1a

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->readStatus_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 881
    :cond_19
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x400

    and-int/2addr v1, v2

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_1a

    .line 882
    const/16 v1, 0x1b

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->contentClass_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 884
    :cond_1a
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1b

    .line 885
    const/16 v1, 0x1c

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 887
    :cond_1b
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    const/high16 v2, 0x1000

    if-ne v1, v2, :cond_1c

    .line 888
    const/16 v1, 0x1d

    iget-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 890
    :cond_1c
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    const/high16 v2, 0x2000

    if-ne v1, v2, :cond_1d

    .line 891
    const/16 v1, 0x1e

    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryReport_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 893
    :cond_1d
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    const/high16 v2, 0x4000

    if-ne v1, v2, :cond_1e

    .line 894
    const/16 v1, 0x1f

    iget-boolean v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->locked_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 896
    :cond_1e
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1f

    .line 897
    const/16 v1, 0x20

    iget-boolean v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->seen_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 899
    :cond_1f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 900
    const/16 v2, 0x21

    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_20
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 903
    const/16 v2, 0x22

    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 905
    :cond_21
    return-void
.end method
