.class public final Lcom/miui/milk/model/WifiProtos$WifiConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WifiProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/WifiProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/WifiProtos$WifiConfig;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private anonymousIdentity_:Ljava/lang/Object;

.field private authAlg_:Ljava/lang/Object;

.field private bitField0_:I

.field private bssid_:Ljava/lang/Object;

.field private caCertFile_:Lcom/google/protobuf/ByteString;

.field private caCert_:Ljava/lang/Object;

.field private clientCertFile_:Lcom/google/protobuf/ByteString;

.field private clientCert_:Ljava/lang/Object;

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private eap_:Ljava/lang/Object;

.field private group_:Ljava/lang/Object;

.field private guid_:Ljava/lang/Object;

.field private identity_:Ljava/lang/Object;

.field private keyMgmt_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mode_:I

.field private pairwise_:Ljava/lang/Object;

.field private password_:Ljava/lang/Object;

.field private phase2_:Ljava/lang/Object;

.field private priority_:I

.field private privateKeyFile_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Ljava/lang/Object;

.field private proto_:Ljava/lang/Object;

.field private psk_:Ljava/lang/Object;

.field private scanSsid_:I

.field private ssid_:Ljava/lang/Object;

.field private wepKey0_:Ljava/lang/Object;

.field private wepKey1_:Ljava/lang/Object;

.field private wepKey2_:Ljava/lang/Object;

.field private wepKey3_:Ljava/lang/Object;

.field private wepTxKeyIndex_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2832
    new-instance v0, Lcom/miui/milk/model/WifiProtos$WifiConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->defaultInstance:Lcom/miui/milk/model/WifiProtos$WifiConfig;

    .line 2833
    sget-object v0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->defaultInstance:Lcom/miui/milk/model/WifiProtos$WifiConfig;

    invoke-direct {v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->initFields()V

    .line 2834
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 143
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 984
    iput-byte v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->memoizedIsInitialized:B

    .line 1091
    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->memoizedSerializedSize:I

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;Lcom/miui/milk/model/WifiProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;-><init>(Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 145
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 984
    iput-byte v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->memoizedIsInitialized:B

    .line 1091
    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->memoizedSerializedSize:I

    .line 145
    return-void
.end method

.method static synthetic access$1002(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey2_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey3_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepTxKeyIndex_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->priority_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->scanSsid_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->mode_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->keyMgmt_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->proto_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->authAlg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->pairwise_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->group_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->eap_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->phase2_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->identity_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->anonymousIdentity_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->password_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCert_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCert_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCertFile_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCertFile_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    return p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->ssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->psk_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey0_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey1_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAnonymousIdentityBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 762
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->anonymousIdentity_:Ljava/lang/Object;

    .line 763
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 764
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 766
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->anonymousIdentity_:Ljava/lang/Object;

    .line 769
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

.method private getAuthAlgBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 570
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->authAlg_:Ljava/lang/Object;

    .line 571
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 572
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 574
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->authAlg_:Ljava/lang/Object;

    .line 577
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

.method private getBssidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 274
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bssid_:Ljava/lang/Object;

    .line 275
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 276
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 278
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bssid_:Ljava/lang/Object;

    .line 281
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

.method private getCaCertBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 890
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCert_:Ljava/lang/Object;

    .line 891
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 892
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 894
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCert_:Ljava/lang/Object;

    .line 897
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

.method private getClientCertBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 826
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCert_:Ljava/lang/Object;

    .line 827
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 828
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 830
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCert_:Ljava/lang/Object;

    .line 833
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

.method public static getDefaultInstance()Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->defaultInstance:Lcom/miui/milk/model/WifiProtos$WifiConfig;

    return-object v0
.end method

.method private getEapBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 666
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->eap_:Ljava/lang/Object;

    .line 667
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 668
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 670
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->eap_:Ljava/lang/Object;

    .line 673
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

.method private getGroupBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->group_:Ljava/lang/Object;

    .line 635
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 636
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 638
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->group_:Ljava/lang/Object;

    .line 641
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

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->guid_:Ljava/lang/Object;

    .line 179
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 180
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 182
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->guid_:Ljava/lang/Object;

    .line 185
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

.method private getIdentityBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 730
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->identity_:Ljava/lang/Object;

    .line 731
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 732
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 734
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->identity_:Ljava/lang/Object;

    .line 737
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

.method private getKeyMgmtBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->keyMgmt_:Ljava/lang/Object;

    .line 507
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 508
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 510
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->keyMgmt_:Ljava/lang/Object;

    .line 513
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
    .line 210
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->luid_:Ljava/lang/Object;

    .line 211
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 212
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 214
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->luid_:Ljava/lang/Object;

    .line 217
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

.method private getPairwiseBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 602
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->pairwise_:Ljava/lang/Object;

    .line 603
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 604
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 606
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->pairwise_:Ljava/lang/Object;

    .line 609
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

.method private getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 794
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->password_:Ljava/lang/Object;

    .line 795
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 796
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 798
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->password_:Ljava/lang/Object;

    .line 801
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

.method private getPhase2Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 698
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->phase2_:Ljava/lang/Object;

    .line 699
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 700
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 702
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->phase2_:Ljava/lang/Object;

    .line 705
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

.method private getPrivateKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 858
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKey_:Ljava/lang/Object;

    .line 859
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 860
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 862
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKey_:Ljava/lang/Object;

    .line 865
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

.method private getProtoBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->proto_:Ljava/lang/Object;

    .line 539
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 540
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 542
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->proto_:Ljava/lang/Object;

    .line 545
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

.method private getPskBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->psk_:Ljava/lang/Object;

    .line 307
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 308
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 310
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->psk_:Ljava/lang/Object;

    .line 313
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

.method private getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->ssid_:Ljava/lang/Object;

    .line 243
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 244
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 246
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->ssid_:Ljava/lang/Object;

    .line 249
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

.method private getWepKey0Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey0_:Ljava/lang/Object;

    .line 339
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 340
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 342
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey0_:Ljava/lang/Object;

    .line 345
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

.method private getWepKey1Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey1_:Ljava/lang/Object;

    .line 371
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 372
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 374
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey1_:Ljava/lang/Object;

    .line 377
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

.method private getWepKey2Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey2_:Ljava/lang/Object;

    .line 403
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 404
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 406
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey2_:Ljava/lang/Object;

    .line 409
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

.method private getWepKey3Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 434
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey3_:Ljava/lang/Object;

    .line 435
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 436
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 438
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey3_:Ljava/lang/Object;

    .line 441
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

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->guid_:Ljava/lang/Object;

    .line 953
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->luid_:Ljava/lang/Object;

    .line 954
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->ssid_:Ljava/lang/Object;

    .line 955
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bssid_:Ljava/lang/Object;

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->psk_:Ljava/lang/Object;

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey0_:Ljava/lang/Object;

    .line 958
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey1_:Ljava/lang/Object;

    .line 959
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey2_:Ljava/lang/Object;

    .line 960
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey3_:Ljava/lang/Object;

    .line 961
    iput v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepTxKeyIndex_:I

    .line 962
    iput v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->priority_:I

    .line 963
    iput v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->scanSsid_:I

    .line 964
    iput v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->mode_:I

    .line 965
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->keyMgmt_:Ljava/lang/Object;

    .line 966
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->proto_:Ljava/lang/Object;

    .line 967
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->authAlg_:Ljava/lang/Object;

    .line 968
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->pairwise_:Ljava/lang/Object;

    .line 969
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->group_:Ljava/lang/Object;

    .line 970
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->eap_:Ljava/lang/Object;

    .line 971
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->phase2_:Ljava/lang/Object;

    .line 972
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->identity_:Ljava/lang/Object;

    .line 973
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->anonymousIdentity_:Ljava/lang/Object;

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->password_:Ljava/lang/Object;

    .line 975
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCert_:Ljava/lang/Object;

    .line 976
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKey_:Ljava/lang/Object;

    .line 977
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCert_:Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCertFile_:Lcom/google/protobuf/ByteString;

    .line 979
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    .line 980
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCertFile_:Lcom/google/protobuf/ByteString;

    .line 981
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 982
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 983
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1

    .prologue
    .line 1297
    #calls: Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->create()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->access$100()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1300
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->newBuilder()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->mergeFrom(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 748
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->anonymousIdentity_:Ljava/lang/Object;

    .line 749
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 750
    check-cast v1, Ljava/lang/String;

    .line 758
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 754
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->anonymousIdentity_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 758
    goto :goto_0
.end method

.method public getAuthAlg()Ljava/lang/String;
    .locals 4

    .prologue
    .line 556
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->authAlg_:Ljava/lang/Object;

    .line 557
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 558
    check-cast v1, Ljava/lang/String;

    .line 566
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 560
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 562
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->authAlg_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 566
    goto :goto_0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bssid_:Ljava/lang/Object;

    .line 261
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 262
    check-cast v1, Ljava/lang/String;

    .line 270
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 264
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 266
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bssid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 270
    goto :goto_0
.end method

.method public getCaCert()Ljava/lang/String;
    .locals 4

    .prologue
    .line 876
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCert_:Ljava/lang/Object;

    .line 877
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 878
    check-cast v1, Ljava/lang/String;

    .line 886
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 880
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 882
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 884
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCert_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 886
    goto :goto_0
.end method

.method public getCaCertFile()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCertFile_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getClientCert()Ljava/lang/String;
    .locals 4

    .prologue
    .line 812
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCert_:Ljava/lang/Object;

    .line 813
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 814
    check-cast v1, Ljava/lang/String;

    .line 822
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 816
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 818
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCert_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 822
    goto :goto_0
.end method

.method public getClientCertFile()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCertFile_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getEap()Ljava/lang/String;
    .locals 4

    .prologue
    .line 652
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->eap_:Ljava/lang/Object;

    .line 653
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 654
    check-cast v1, Ljava/lang/String;

    .line 662
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 656
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 658
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->eap_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 662
    goto :goto_0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 4

    .prologue
    .line 620
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->group_:Ljava/lang/Object;

    .line 621
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 622
    check-cast v1, Ljava/lang/String;

    .line 630
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 624
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 626
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->group_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 630
    goto :goto_0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->guid_:Ljava/lang/Object;

    .line 165
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 166
    check-cast v1, Ljava/lang/String;

    .line 174
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 168
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 170
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 174
    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 716
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->identity_:Ljava/lang/Object;

    .line 717
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 718
    check-cast v1, Ljava/lang/String;

    .line 726
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 720
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 722
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->identity_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 726
    goto :goto_0
.end method

.method public getKeyMgmt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->keyMgmt_:Ljava/lang/Object;

    .line 493
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 494
    check-cast v1, Ljava/lang/String;

    .line 502
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 496
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 498
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 500
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->keyMgmt_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 502
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->luid_:Ljava/lang/Object;

    .line 197
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 198
    check-cast v1, Ljava/lang/String;

    .line 206
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 200
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 202
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 206
    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->mode_:I

    return v0
.end method

.method public getPairwise()Ljava/lang/String;
    .locals 4

    .prologue
    .line 588
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->pairwise_:Ljava/lang/Object;

    .line 589
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 590
    check-cast v1, Ljava/lang/String;

    .line 598
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 592
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 594
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 596
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->pairwise_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 598
    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 780
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->password_:Ljava/lang/Object;

    .line 781
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 782
    check-cast v1, Ljava/lang/String;

    .line 790
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 784
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 786
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->password_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 790
    goto :goto_0
.end method

.method public getPhase2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 684
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->phase2_:Ljava/lang/Object;

    .line 685
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 686
    check-cast v1, Ljava/lang/String;

    .line 694
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 688
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 690
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->phase2_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 694
    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->priority_:I

    return v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 844
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKey_:Ljava/lang/Object;

    .line 845
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 846
    check-cast v1, Ljava/lang/String;

    .line 854
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 848
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 850
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 851
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 852
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKey_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 854
    goto :goto_0
.end method

.method public getPrivateKeyFile()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getProto()Ljava/lang/String;
    .locals 4

    .prologue
    .line 524
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->proto_:Ljava/lang/Object;

    .line 525
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 526
    check-cast v1, Ljava/lang/String;

    .line 534
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 528
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 530
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->proto_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 534
    goto :goto_0
.end method

.method public getPsk()Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->psk_:Ljava/lang/Object;

    .line 293
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 294
    check-cast v1, Ljava/lang/String;

    .line 302
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 296
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 298
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->psk_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 302
    goto :goto_0
.end method

.method public getScanSsid()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->scanSsid_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1093
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->memoizedSerializedSize:I

    .line 1094
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1222
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1096
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1097
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1098
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1101
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1102
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1105
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 1106
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getSsidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1109
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 1110
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getBssidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1113
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_5

    .line 1114
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPskBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1117
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1118
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey0Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1121
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 1122
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1125
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 1126
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1129
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 1130
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey3Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1133
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 1134
    const/16 v2, 0xa

    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepTxKeyIndex_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1137
    :cond_a
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 1138
    const/16 v2, 0xb

    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->priority_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1141
    :cond_b
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 1142
    const/16 v2, 0xc

    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->scanSsid_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1145
    :cond_c
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d

    .line 1146
    const/16 v2, 0xd

    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->mode_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1149
    :cond_d
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e

    .line 1150
    const/16 v2, 0xf

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getKeyMgmtBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1153
    :cond_e
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_f

    .line 1154
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getProtoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1157
    :cond_f
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_10

    .line 1158
    const/16 v2, 0x11

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAuthAlgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1161
    :cond_10
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1162
    const/16 v2, 0x12

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPairwiseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1165
    :cond_11
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 1166
    const/16 v2, 0x13

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getGroupBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1169
    :cond_12
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    const/high16 v3, 0x2000

    if-ne v2, v3, :cond_13

    .line 1170
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1173
    :cond_13
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_14

    .line 1174
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1177
    :cond_14
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_15

    .line 1178
    const/16 v2, 0x1f

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getEapBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1181
    :cond_15
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_16

    .line 1182
    const/16 v2, 0x20

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPhase2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1185
    :cond_16
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_17

    .line 1186
    const/16 v2, 0x21

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getIdentityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1189
    :cond_17
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_18

    .line 1190
    const/16 v2, 0x22

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAnonymousIdentityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1193
    :cond_18
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_19

    .line 1194
    const/16 v2, 0x23

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1197
    :cond_19
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_1a

    .line 1198
    const/16 v2, 0x24

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCertBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1201
    :cond_1a
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_1b

    .line 1202
    const/16 v2, 0x25

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1205
    :cond_1b
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_1c

    .line 1206
    const/16 v2, 0x26

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCertBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1209
    :cond_1c
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    const/high16 v3, 0x400

    if-ne v2, v3, :cond_1d

    .line 1210
    const/16 v2, 0x2e

    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCertFile_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1213
    :cond_1d
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    const/high16 v3, 0x800

    if-ne v2, v3, :cond_1e

    .line 1214
    const/16 v2, 0x2f

    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1217
    :cond_1e
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_1f

    .line 1218
    const/16 v2, 0x30

    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCertFile_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1221
    :cond_1f
    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->memoizedSerializedSize:I

    move v1, v0

    .line 1222
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->ssid_:Ljava/lang/Object;

    .line 229
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 230
    check-cast v1, Ljava/lang/String;

    .line 238
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 232
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 234
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->ssid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 238
    goto :goto_0
.end method

.method public getWepKey0()Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey0_:Ljava/lang/Object;

    .line 325
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 326
    check-cast v1, Ljava/lang/String;

    .line 334
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 328
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 330
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey0_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 334
    goto :goto_0
.end method

.method public getWepKey1()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey1_:Ljava/lang/Object;

    .line 357
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 358
    check-cast v1, Ljava/lang/String;

    .line 366
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 360
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 362
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey1_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 366
    goto :goto_0
.end method

.method public getWepKey2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey2_:Ljava/lang/Object;

    .line 389
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 390
    check-cast v1, Ljava/lang/String;

    .line 398
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 392
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 394
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey2_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 398
    goto :goto_0
.end method

.method public getWepKey3()Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey3_:Ljava/lang/Object;

    .line 421
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 422
    check-cast v1, Ljava/lang/String;

    .line 430
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 424
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 426
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey3_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 430
    goto :goto_0
.end method

.method public getWepTxKeyIndex()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepTxKeyIndex_:I

    return v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 935
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAnonymousIdentity()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 745
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthAlg()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 553
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBssid()Z
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasCaCert()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200

    .line 873
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCaCertFile()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000

    .line 925
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientCert()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 809
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientCertFile()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400

    .line 905
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

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
    const/high16 v1, 0x4000

    .line 945
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEap()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 649
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroup()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 617
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

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

    .line 161
    iget v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIdentity()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 713
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyMgmt()Z
    .locals 2

    .prologue
    .line 489
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasMode()Z
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasPairwise()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 585
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPassword()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 777
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhase2()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 681
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 459
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasPrivateKey()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 841
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrivateKeyFile()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800

    .line 915
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProto()Z
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasPsk()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasScanSsid()Z
    .locals 2

    .prologue
    .line 469
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasSsid()Z
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasWepKey0()Z
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasWepKey1()Z
    .locals 2

    .prologue
    .line 353
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasWepKey2()Z
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasWepKey3()Z
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public hasWepTxKeyIndex()Z
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 986
    iget-byte v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->memoizedIsInitialized:B

    .line 987
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 990
    :goto_0
    return v1

    .line 987
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 989
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public toBuilder()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1

    .prologue
    .line 1302
    invoke-static {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->newBuilder(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

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
    .line 1227
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
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 995
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getSerializedSize()I

    .line 996
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 997
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 999
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1000
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1002
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1003
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getSsidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1005
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 1006
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getBssidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1008
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4

    .line 1009
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPskBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1011
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1012
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey0Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1014
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1015
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1017
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1018
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1020
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1021
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey3Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1023
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 1024
    const/16 v0, 0xa

    iget v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepTxKeyIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1026
    :cond_9
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 1027
    const/16 v0, 0xb

    iget v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->priority_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1029
    :cond_a
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 1030
    const/16 v0, 0xc

    iget v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->scanSsid_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1032
    :cond_b
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 1033
    const/16 v0, 0xd

    iget v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->mode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1035
    :cond_c
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 1036
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getKeyMgmtBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1038
    :cond_d
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 1039
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getProtoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1041
    :cond_e
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    .line 1042
    const/16 v0, 0x11

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAuthAlgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1044
    :cond_f
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1045
    const/16 v0, 0x12

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPairwiseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1047
    :cond_10
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 1048
    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getGroupBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1050
    :cond_11
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    const/high16 v1, 0x2000

    if-ne v0, v1, :cond_12

    .line 1051
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1053
    :cond_12
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_13

    .line 1054
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1056
    :cond_13
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 1057
    const/16 v0, 0x1f

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getEapBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1059
    :cond_14
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_15

    .line 1060
    const/16 v0, 0x20

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPhase2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1062
    :cond_15
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_16

    .line 1063
    const/16 v0, 0x21

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getIdentityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1065
    :cond_16
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_17

    .line 1066
    const/16 v0, 0x22

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAnonymousIdentityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1068
    :cond_17
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_18

    .line 1069
    const/16 v0, 0x23

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1071
    :cond_18
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_19

    .line 1072
    const/16 v0, 0x24

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCertBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1074
    :cond_19
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_1a

    .line 1075
    const/16 v0, 0x25

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1077
    :cond_1a
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_1b

    .line 1078
    const/16 v0, 0x26

    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCertBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1080
    :cond_1b
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_1c

    .line 1081
    const/16 v0, 0x2e

    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCertFile_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1083
    :cond_1c
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_1d

    .line 1084
    const/16 v0, 0x2f

    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1086
    :cond_1d
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    if-ne v0, v1, :cond_1e

    .line 1087
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCertFile_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1089
    :cond_1e
    return-void
.end method
