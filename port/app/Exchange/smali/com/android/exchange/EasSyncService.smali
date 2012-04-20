.class public Lcom/android/exchange/EasSyncService;
.super Lcom/android/exchange/AbstractSyncService;
.source "EasSyncService.java"


# static fields
.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field mAuthString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBaseUriString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBindArguments:[Ljava/lang/String;

.field private mClientCertAlias:Ljava/lang/String;

.field public mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceId:Ljava/lang/String;

.field public mHostAddress:Ljava/lang/String;

.field public mIsValid:Z

.field public mPassword:Ljava/lang/String;

.field private volatile mPendingPost:Lorg/apache/http/client/methods/HttpPost;

.field private mPingChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPingForceHeartbeat:I

.field mPingHeartbeat:I

.field mPingHeartbeatDropped:Z

.field private mPingHighWaterMark:I

.field mPingMaxHeartbeat:I

.field mPingMinHeartbeat:I

.field private mPostAborted:Z

.field private mPostReset:Z

.field public mProtocolVersion:Ljava/lang/String;

.field public mProtocolVersionDouble:Ljava/lang/Double;

.field private mRedirectCount:I

.field private mSsl:Z

.field private mTrustSsl:Z

.field public mUpsyncFailed:Z

.field public mUserName:Ljava/lang/String;

.field mUserString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EAS-1.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 264
    const-string v0, "EAS Validation"

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 6
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 198
    const-string v1, "2.5"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 200
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 201
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 203
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 205
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 212
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 213
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 214
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 217
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 220
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 222
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 224
    const/16 v1, 0x122

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 226
    const/16 v1, 0x3f2

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 228
    const/16 v1, 0x1d6

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 230
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 232
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 234
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 236
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 238
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 241
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 485
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 246
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v1, :cond_0

    .line 247
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 257
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 251
    .local v0, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-nez v0, :cond_1

    .line 252
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    goto :goto_0

    .line 255
    :cond_1
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 256
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 255
    goto :goto_1

    :cond_3
    move v2, v3

    .line 256
    goto :goto_2
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 200
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 201
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 212
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 214
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 220
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 222
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 224
    const/16 v0, 0x122

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 226
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 228
    const/16 v0, 0x1d6

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 230
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 232
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 234
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 236
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 238
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 485
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    .line 261
    return-void
.end method

.method private acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tempKey"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1588
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x38b

    .line 1593
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1594
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x386

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1595
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1598
    const/16 v1, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1600
    const/16 v1, 0x389

    invoke-virtual {v0, v1, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1601
    invoke-virtual {v0, v3, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1602
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1603
    if-eqz p3, :cond_0

    .line 1604
    const/16 v1, 0x38c

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1605
    const-string v1, "1"

    invoke-virtual {v0, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1606
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1608
    :cond_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1609
    const-string v1, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1611
    :try_start_0
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1612
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 1613
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1614
    new-instance v2, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v2, v0, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1615
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provision confirmation received for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PART"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " set"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1623
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1628
    :goto_1
    return-object v0

    .line 1617
    :cond_1
    :try_start_1
    const-string v0, "FULL"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1623
    :cond_2
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provision confirmation failed for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PART"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1628
    const/4 v0, 0x0

    goto :goto_1

    .line 1623
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    .line 1626
    :cond_3
    const-string v0, "FULL"

    goto :goto_2
.end method

.method private acknowledgeRemoteWipe(Ljava/lang/String;)V
    .locals 2
    .parameter "tempKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1584
    const-string v0, "1"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1585
    return-void
.end method

.method private cacheAuthUserAndBaseUriStrings()V
    .locals 4

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&User="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 1221
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeScheme(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1225
    :cond_1
    return-void
.end method

.method private canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1676
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "AccountMailbox redirect error"

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1677
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 1679
    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/EasSyncService;->getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1681
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1682
    const-string v3, "address"

    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1686
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private canProvision()Lcom/android/exchange/adapter/ProvisionParser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1516
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1517
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1518
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x402c333333333333L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 1520
    const/16 v1, 0x496

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x488

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1521
    const/16 v1, 0x497

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1524
    const/16 v1, 0x49a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1528
    const/16 v1, 0x4a0

    sget-object v2, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1529
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1531
    :cond_0
    const/16 v1, 0x386

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1532
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1533
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1534
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1535
    const-string v1, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1537
    :try_start_0
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1538
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    .line 1539
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1540
    new-instance v0, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v0, v2, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1541
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1544
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 1548
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1550
    if-eqz v2, :cond_1

    .line 1551
    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/ProvisionParser;->setSecuritySyncKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1573
    :goto_1
    return-object v0

    .line 1553
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1557
    const-string v2, "PolicySet is NOT fully supportable"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1561
    if-eqz v2, :cond_1

    .line 1562
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->clearUnsupportedPolicies()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1569
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    :cond_3
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1573
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private exitStatusToServiceStatus(I)I
    .locals 1
    .parameter "exitStatus"

    .prologue
    .line 1660
    packed-switch p1, :pswitch_data_0

    .line 1666
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1662
    :pswitch_1
    const/16 v0, 0x17

    goto :goto_0

    .line 1664
    :pswitch_2
    const/16 v0, 0x16

    goto :goto_0

    .line 1660
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 1

    .prologue
    .line 1284
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getHttpClient(I)Lorg/apache/http/client/HttpClient;
    .locals 3
    .parameter "timeout"

    .prologue
    .line 1288
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1289
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1290
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1291
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1292
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 1293
    .local v0, client:Lorg/apache/http/client/HttpClient;
    return-object v0
.end method

.method private getPolicyType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, "MS-EAS-Provisioning-WBXML"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MS-WAP-Provisioning-XML"

    goto :goto_0
.end method

.method private getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .parameter "resp"
    .parameter "post"

    .prologue
    .line 658
    const-string v2, "X-MS-Location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 659
    .local v1, locHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 660
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, loc:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 668
    .end local v0           #loc:Ljava/lang/String;
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1405
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1406
    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 1407
    const-string v0, "Contacts"

    .line 1411
    :goto_0
    return-object v0

    .line 1408
    :cond_0
    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 1409
    const-string v0, "Calendar"

    goto :goto_0

    .line 1411
    :cond_1
    const-string v0, "Email"

    goto :goto_0
.end method

.method private getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z
    .locals 8
    .parameter "resp"
    .parameter "hostAuth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    const-string v4, "X-MS-Location"

    invoke-virtual {p1, v4}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 467
    .local v1, locHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 470
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, loc:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 473
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 474
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    iput-object v4, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 475
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Redirecting to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v0           #loc:Ljava/lang/String;
    :goto_0
    return v2

    .line 477
    :catch_0
    move-exception v2

    :cond_0
    move v2, v3

    .line 481
    goto :goto_0
.end method

.method private isLikelyNatFailure(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1979
    if-nez p1, :cond_1

    .line 1983
    :cond_0
    :goto_0
    return v0

    .line 1980
    :cond_1
    const-string v1, "reset by peer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1981
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x3

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 2241
    new-instance v7, Lcom/android/exchange/adapter/PingParser;

    invoke-direct {v7, p1, p0}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 2242
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2245
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2246
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    .line 2247
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 2248
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    aput-object v6, v0, v10

    .line 2249
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? and serverId=?"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2251
    if-nez v1, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 2253
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2270
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2271
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getStatusType(Ljava/lang/String;)I

    move-result v2

    .line 2273
    if-ne v2, v11, :cond_1

    .line 2274
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v0

    .line 2275
    if-lez v0, :cond_3

    .line 2276
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2301
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2277
    :cond_3
    if-nez v0, :cond_1

    .line 2280
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2281
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2282
    if-nez v0, :cond_4

    .line 2283
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Last ping reported changes in error for: "

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2284
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2301
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2285
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v10, :cond_5

    .line 2287
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/EasSyncService;->pushFallback(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2301
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2290
    :cond_5
    const/4 v3, 0x2

    :try_start_3
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "Last ping reported changes in error for: "

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2291
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2305
    :cond_6
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->getSyncStatus()I

    move-result v0

    return v0
.end method

.method private postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    .locals 9
    .parameter "client"
    .parameter "post"
    .parameter "canRetry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7530

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 685
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;

    move-result-object v2

    .line 687
    .local v2, resp:Lcom/android/exchange/EasResponse;
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 689
    .local v1, code:I
    const/16 v3, 0x1c3

    if-ne v1, v3, :cond_1

    .line 690
    iget-object v3, v2, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-direct {p0, v3, p2}, Lcom/android/exchange/EasSyncService;->getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    .line 691
    if-eqz p2, :cond_0

    .line 692
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;

    move-result-object v2

    .line 715
    .end local v2           #resp:Lcom/android/exchange/EasResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 696
    .restart local v2       #resp:Lcom/android/exchange/EasResponse;
    :cond_1
    const/16 v3, 0x191

    if-ne v1, v3, :cond_3

    .line 697
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 699
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 700
    .local v0, atSignIndex:I
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 701
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 702
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "401 received; trying username: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 704
    const-string v3, "Authorization"

    invoke-virtual {p2, v3}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 705
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-direct {p0, p1, p2, v6}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;

    move-result-object v2

    goto :goto_0

    .line 708
    .end local v0           #atSignIndex:I
    :cond_2
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 710
    :cond_3
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_0

    .line 712
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", throwing IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 713
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private pushFallback(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1955
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1956
    if-nez v1, :cond_0

    .line 1969
    :goto_0
    return-void

    .line 1959
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1960
    const/16 v0, 0x19

    .line 1961
    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v3, :cond_1

    .line 1962
    const/4 v0, 0x5

    .line 1964
    :cond_1
    const-string v3, "syncInterval"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1965
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** PING ERROR LOOP: Set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1968
    const-string v0, "push fallback"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetSecurityPolicies()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2561
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2562
    const-string v1, "securityFlags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2563
    const-string v1, "securitySyncKey"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2564
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 2565
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2567
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesRequired(Landroid/content/Context;J)V

    .line 2568
    return-void
.end method

.method private runPingLoop()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 1988
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 1989
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "runPingLoop"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v6, 0x1b7740

    add-long v15, v2, v6

    .line 1992
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1993
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1994
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1995
    const/4 v4, 0x0

    .line 1996
    const-wide/16 v2, -0x1

    move-wide v8, v2

    move v10, v4

    move v11, v5

    .line 1998
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v15

    if-gez v2, :cond_27

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_27

    .line 2000
    const/4 v14, 0x0

    .line 2002
    const/4 v13, 0x0

    .line 2004
    const/4 v12, 0x0

    .line 2006
    new-instance v20, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accountKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND syncInterval IN (-3,-2) AND type!=\"68\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2010
    if-nez v21, :cond_0

    new-instance v2, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v2

    .line 2011
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 2012
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 2014
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-nez v2, :cond_2a

    .line 2015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    move v7, v12

    move v5, v13

    move v8, v14

    .line 2019
    :goto_1
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2020
    add-int/lit8 v6, v8, 0x1

    .line 2024
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2025
    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->pingStatus(J)I

    move-result v4

    .line 2026
    const/4 v8, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2027
    if-nez v4, :cond_4

    .line 2028
    const/4 v4, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2029
    if-eqz v4, :cond_1

    const-string v9, "0"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2031
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 2032
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v8, v6

    .line 2033
    goto :goto_1

    .line 2036
    :cond_2
    add-int/lit8 v4, v5, 0x1

    if-nez v5, :cond_3

    .line 2038
    const/16 v5, 0x345

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v9, 0x348

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v9, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v9, 0x349

    invoke-virtual {v5, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2044
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 2045
    const/16 v9, 0x34a

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v12, 0x34b

    const/4 v13, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v12, 0x34c

    invoke-virtual {v9, v12, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2049
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v5, v4

    move v8, v6

    .line 2058
    goto :goto_1

    .line 2050
    :cond_4
    const/4 v9, 0x1

    if-eq v4, v9, :cond_5

    const/4 v9, 0x2

    if-ne v4, v9, :cond_6

    .line 2052
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_2

    .line 2053
    :cond_6
    const/4 v9, 0x3

    if-ne v4, v9, :cond_29

    .line 2054
    add-int/lit8 v4, v6, -0x1

    .line 2055
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const/4 v8, 0x1

    const-string v9, " in error state; ignore"

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v4

    .line 2056
    goto/16 :goto_1

    .line 2060
    :cond_7
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2063
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_9

    .line 2064
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2065
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ping not ready for: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2067
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2068
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ping ready for: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2074
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x5

    if-le v10, v4, :cond_b

    const/4 v4, 0x1

    move v6, v4

    .line 2076
    :goto_3
    if-lez v5, :cond_22

    if-eq v5, v8, :cond_a

    if-eqz v6, :cond_22

    .line 2078
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2079
    const/4 v10, 0x0

    .line 2080
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 2081
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 2084
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v4, :cond_c

    .line 2220
    :goto_4
    return-void

    .line 2060
    :catchall_0
    move-exception v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2074
    :cond_b
    const/4 v4, 0x0

    move v6, v4

    goto :goto_3

    .line 2086
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2089
    if-eqz v6, :cond_d

    .line 2090
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "Forcing ping after waiting for all boxes to be ready"

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2092
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/exchange/EasSyncService;->sendPing([BI)Lcom/android/exchange/EasResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 2096
    :try_start_2
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v4

    .line 2097
    const-string v7, "Ping response: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 2102
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 2106
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v7, :cond_11

    .line 2107
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Stopping pingLoop"

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2147
    :try_start_3
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 2149
    :catch_0
    move-exception v4

    move-object v8, v4

    move v7, v11

    .line 2150
    :goto_6
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 2153
    if-eqz v6, :cond_18

    const/4 v4, 0x1

    .line 2154
    :goto_7
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException runPingLoop: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v4, :cond_19

    move-object v5, v6

    :goto_8
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2155
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    if-eqz v5, :cond_1a

    :cond_f
    :goto_9
    move v4, v10

    move v5, v7

    :goto_a
    move-wide v8, v2

    move v10, v4

    move v11, v5

    .line 2216
    goto/16 :goto_0

    :cond_10
    move v4, v11

    .line 2092
    goto :goto_5

    .line 2111
    :cond_11
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_16

    .line 2113
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v7, v8}, Lcom/android/exchange/ExchangeService;->removeFromSyncErrorMap(J)V

    .line 2114
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 2115
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 2116
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v7, v1}, Lcom/android/exchange/EasSyncService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v4

    .line 2120
    const/4 v7, 0x1

    if-ne v4, v7, :cond_14

    if-nez v6, :cond_14

    .line 2121
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    if-le v11, v4, :cond_12

    .line 2122
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 2123
    const-string v4, "Setting high water mark at: "

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2125
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-ge v11, v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    if-nez v4, :cond_14

    .line 2127
    add-int/lit16 v11, v11, 0xb4

    .line 2128
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v11, v4, :cond_13

    .line 2129
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 2131
    :cond_13
    const-string v4, "Increase ping heartbeat to "

    const-string v6, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_14
    move v7, v11

    .line 2147
    :goto_b
    :try_start_5
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_9

    .line 2149
    :catch_1
    move-exception v4

    move-object v8, v4

    goto/16 :goto_6

    .line 2135
    :cond_15
    const/4 v4, 0x1

    :try_start_6
    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Ping returned empty result; throwing IOException"

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2136
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2147
    :catchall_1
    move-exception v4

    :try_start_7
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V

    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2138
    :cond_16
    :try_start_8
    invoke-static {v4}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2139
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2140
    const-string v6, "Authorization error during Ping: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2141
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 2142
    :cond_17
    invoke-static {v4}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 2143
    const-string v6, "Provisioning required during Ping: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2144
    new-instance v4, Lcom/android/exchange/CommandStatusException;

    const/16 v6, 0x8e

    invoke-direct {v4, v6}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2153
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 2154
    :cond_19
    const-string v5, "[no message]"

    goto/16 :goto_8

    .line 2158
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/EasSyncService;->isLikelyNatFailure(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2159
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v12

    .line 2160
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-le v7, v6, :cond_1d

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    if-le v7, v6, :cond_1d

    .line 2162
    add-int/lit16 v4, v7, -0xb4

    .line 2163
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 2164
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v4, v5, :cond_1c

    .line 2165
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 2167
    :cond_1c
    const-string v5, "Decreased ping heartbeat to "

    const-string v6, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    :goto_c
    move v7, v4

    .line 2181
    goto/16 :goto_9

    .line 2168
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-eqz v6, :cond_1e

    .line 2174
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Ping aborted; retry"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v4, v7

    goto :goto_c

    .line 2175
    :cond_1e
    const-wide/16 v11, 0x7d0

    cmp-long v4, v4, v11

    if-gez v4, :cond_1f

    .line 2176
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Abort or NAT type return < 2 seconds; throwing IOException"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2177
    throw v8

    .line 2179
    :cond_1f
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "NAT type IOException"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v4, v7

    goto :goto_c

    .line 2181
    :cond_20
    if-eqz v4, :cond_21

    const-string v4, "roken pipe"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 2186
    :cond_21
    throw v8

    .line 2189
    :cond_22
    if-eqz v6, :cond_23

    .line 2192
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pingLoop waiting 60s for any pingable boxes"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2193
    const-wide/32 v4, 0xea60

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v4, v10

    move v5, v11

    goto/16 :goto_a

    .line 2194
    :cond_23
    if-lez v8, :cond_24

    .line 2197
    const-wide/16 v4, 0x7d0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    .line 2198
    add-int/lit8 v10, v10, 0x1

    move v4, v10

    move v5, v11

    goto/16 :goto_a

    .line 2200
    :cond_24
    if-lez v7, :cond_25

    .line 2204
    const-string v4, "pingLoop waiting for initial sync of "

    const-string v5, " box(es)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 2205
    const-wide/16 v4, 0x2710

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v4, v10

    move v5, v11

    goto/16 :goto_a

    .line 2206
    :cond_25
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_26

    .line 2208
    const-wide/32 v4, 0xafc8

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v4, v10

    move v5, v11

    goto/16 :goto_a

    .line 2213
    :cond_26
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Account mailbox sleeping for 20m"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2214
    const-wide/32 v4, 0x124f80

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v4, v10

    move v5, v11

    goto/16 :goto_a

    .line 2219
    :cond_27
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    goto/16 :goto_4

    :cond_28
    move v7, v11

    goto/16 :goto_b

    :cond_29
    move v4, v5

    goto/16 :goto_2

    :cond_2a
    move v7, v12

    move v5, v13

    move-wide v2, v8

    move v8, v14

    goto/16 :goto_1
.end method

.method public static searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/android/exchange/provider/GalResult;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 976
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 977
    if-eqz v1, :cond_0

    .line 978
    invoke-static {p0, v1}, Lcom/android/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;

    move-result-object v2

    .line 979
    if-nez v2, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-object v0

    .line 981
    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 982
    const/16 v3, 0x3c5

    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x3c7

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 983
    const/16 v3, 0x3c8

    const-string v4, "GAL"

    invoke-virtual {v1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x3c9

    invoke-virtual {v3, v4, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 984
    const/16 v3, 0x3ca

    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 985
    const/16 v3, 0x3cb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p4, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 986
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 987
    const-string v3, "Search"

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 989
    :try_start_1
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 990
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_3

    .line 991
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 993
    :try_start_2
    new-instance v1, Lcom/android/exchange/adapter/GalParser;

    invoke-direct {v1, v4, v2}, Lcom/android/exchange/adapter/GalParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 994
    invoke-virtual {v1}, Lcom/android/exchange/adapter/GalParser;->parse()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 995
    invoke-virtual {v1}, Lcom/android/exchange/adapter/GalParser;->getGalResult()Lcom/android/exchange/provider/GalResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 998
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1004
    :try_start_4
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 998
    :cond_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1004
    :goto_1
    :try_start_6
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1006
    :catch_0
    move-exception v1

    .line 1008
    new-array v3, v9, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GAL lookup exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 998
    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1004
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V

    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1001
    :cond_3
    const/4 v4, 0x1

    :try_start_9
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GAL lookup returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1
.end method

.method private sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 1020
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    new-instance v1, Lcom/android/emailcommon/mail/PackedString;

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 1025
    const-string v0, "ORGMAIL"

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1027
    array-length v2, v0

    if-ne v2, v9, :cond_0

    .line 1028
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1030
    const-string v2, "DTSTAMP"

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1031
    const-string v3, "DTSTART"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1032
    const-string v4, "DTEND"

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1036
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1037
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1040
    const-string v7, "DTSTAMP"

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v2, "dtstart"

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1043
    const-string v2, "dtend"

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1044
    const-string v2, "eventLocation"

    const-string v3, "LOC"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v2, "title"

    const-string v3, "TITLE"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v2, "organizer"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1050
    const-string v3, "attendeeRelationship"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1052
    const-string v3, "attendeeEmail"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1056
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1057
    const-string v3, "attendeeRelationship"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1066
    packed-switch p2, :pswitch_data_0

    .line 1075
    :pswitch_0
    const/16 v0, 0x100

    .line 1078
    :goto_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v3, "UID"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2, v6, v0, v1, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 1068
    :pswitch_1
    const/16 v0, 0x40

    .line 1069
    goto :goto_1

    .line 1071
    :pswitch_2
    const/16 v0, 0x80

    .line 1072
    goto :goto_1

    .line 1066
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendSettings()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1632
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1633
    const/16 v1, 0x485

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1634
    const/16 v1, 0x496

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x488

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1635
    const/16 v1, 0x497

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1636
    const/16 v1, 0x49a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1637
    const/16 v1, 0x4a0

    sget-object v2, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1638
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1639
    const-string v1, "Settings"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1641
    :try_start_0
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1642
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 1643
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1644
    new-instance v2, Lcom/android/exchange/adapter/SettingsParser;

    invoke-direct {v2, v0, p0}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1645
    invoke-virtual {v2}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1648
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1651
    :goto_0
    return v0

    .line 1648
    :cond_0
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1651
    const/4 v0, 0x0

    goto :goto_0

    .line 1648
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
.end method

.method private setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    .locals 13
    .parameter "service"
    .parameter "versionHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 373
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, supportedVersions:Ljava/lang/String;
    new-array v9, v12, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Server supports versions: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 375
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 376
    .local v7, supportedVersionsArray:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 378
    .local v5, ourVersion:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v8, v1, v3

    .line 379
    .local v8, version:Ljava/lang/String;
    const-string v9, "2.5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "12.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "12.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "14.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "14.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 384
    :cond_0
    move-object v5, v8

    .line 378
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    .end local v8           #version:Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_3

    .line 390
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No supported EAS versions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v10, 0x9

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v9

    .line 395
    :cond_3
    const-string v9, "14.1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "Exchange14"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 397
    const-string v5, "14.0"

    .line 399
    :cond_4
    iput-object v5, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 400
    invoke-static {v5}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 401
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 402
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_5

    .line 403
    iput-object v5, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 405
    iget-object v9, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4028

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_5

    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v9, v9, 0x800

    if-nez v9, :cond_5

    .line 407
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 408
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 409
    .local v2, cv:Landroid/content/ContentValues;
    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v9, v9, 0x1800

    iput v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 411
    const-string v9, "flags"

    iget v10, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    iget-object v9, p1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9, v2}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 417
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_5
    return-void
.end method

.method public static setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;
    .locals 9
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 428
    iget v7, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_0

    move-object v3, v4

    .line 456
    :goto_0
    return-object v3

    .line 432
    :cond_0
    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 433
    .local v2, protocolVersion:Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 434
    goto :goto_0

    .line 436
    :cond_1
    new-instance v3, Lcom/android/exchange/EasSyncService;

    const-string v7, "OutOfBand"

    invoke-direct {v3, v7}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 437
    .local v3, svc:Lcom/android/exchange/EasSyncService;
    iget-wide v7, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 438
    .local v1, ha:Lcom/android/emailcommon/provider/HostAuth;
    iput-object v2, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 439
    invoke-static {v2}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 440
    iput-object p0, v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 441
    iget-object v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 442
    iget-object v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 443
    iget-object v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 445
    :try_start_0
    iget v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    move v7, v5

    :goto_1
    iget v8, v1, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    :goto_2
    iget-object v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(ZZLjava/lang/String;)V

    .line 449
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 455
    iput-object p1, v3, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    goto :goto_0

    :cond_2
    move v7, v6

    .line 445
    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    .line 450
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v3, v4

    .line 451
    goto :goto_0

    .line 452
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/security/cert/CertificateException;
    move-object v3, v4

    .line 453
    goto :goto_0
.end method

.method private sleep(JZ)V
    .locals 4
    .parameter "ms"
    .parameter "runAsleep"

    .prologue
    .line 2223
    if-eqz p3, :cond_0

    .line 2224
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 2227
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2231
    if-eqz p3, :cond_1

    .line 2232
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 2235
    :cond_1
    :goto_0
    return-void

    .line 2228
    :catch_0
    move-exception v0

    .line 2231
    if-eqz p3, :cond_1

    .line 2232
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    goto :goto_0

    .line 2231
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 2232
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    :cond_2
    throw v0
.end method

.method private tryProvision()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1427
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v4

    .line 1428
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1430
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v5

    .line 1433
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_7

    .line 1434
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 1438
    :goto_0
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v6, v7, v5, v1}, Lcom/android/emailcommon/provider/Policy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 1440
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V

    .line 1442
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v6, v7}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesUpdated(Landroid/content/Context;J)V

    .line 1443
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1445
    const-string v0, "!!! Remote wipe request received"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1, v3}, Lcom/android/exchange/SecurityPolicyDelegate;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 1449
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 1452
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/SecurityPolicyDelegate;->isActiveAdmin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    const-string v0, "!!! Not device admin; can\'t wipe"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    move v0, v2

    .line 1501
    :goto_1
    return v0

    .line 1460
    :cond_0
    :try_start_0
    const-string v0, "!!! Acknowledging remote wipe to server"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeRemoteWipe(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :goto_2
    const-string v0, "!!! Executing remote wipe"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/SecurityPolicyDelegate;->remoteWipe(Landroid/content/Context;)V

    move v0, v2

    .line 1469
    goto :goto_1

    .line 1470
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/android/exchange/SecurityPolicyDelegate;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1475
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x402c

    cmpl-double v1, v6, v8

    if-nez v1, :cond_4

    .line 1476
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v1

    .line 1481
    :goto_3
    if-eqz v1, :cond_6

    .line 1483
    if-eqz v0, :cond_3

    .line 1484
    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v4, v5, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v2, v4, :cond_2

    iget v0, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v2, v5, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-eq v0, v2, :cond_3

    .line 1486
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v2, v5}, Lcom/android/emailcommon/provider/Policy;->setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V

    .line 1490
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v2, v5, v1}, Lcom/android/emailcommon/provider/Policy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->releaseSecurityHold(Lcom/android/emailcommon/provider/Account;)V

    move v0, v3

    .line 1493
    goto :goto_1

    .line 1478
    :cond_4
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-direct {p0, v1, v4}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1498
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v3, v4}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesRequired(Landroid/content/Context;J)V

    :cond_6
    move v0, v2

    .line 1501
    goto :goto_1

    .line 1462
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public addRequest(Lcom/android/exchange/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public alarm()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 277
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-nez v7, :cond_0

    .line 331
    :goto_0
    return v5

    .line 278
    :cond_0
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, threadName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 285
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_5

    .line 286
    sget-boolean v8, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v8, :cond_2

    .line 287
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v4

    .line 288
    .local v4, uri:Ljava/net/URI;
    if-eqz v4, :cond_4

    .line 289
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 291
    const-string v1, "POST"

    .line 293
    :cond_1
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, ": Alert, aborting "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 299
    .end local v1           #query:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :cond_2
    :goto_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 300
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 306
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    const-wide/16 v7, 0x2710

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    :goto_2
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    .line 315
    .local v2, s:Ljava/lang/Thread$State;
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_3

    .line 316
    new-array v7, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 319
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 322
    :try_start_2
    sget-object v8, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v2, v8, :cond_6

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-ne v8, v0, :cond_6

    .line 323
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 324
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 325
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Interrupting..."

    aput-object v9, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 327
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, v6

    goto/16 :goto_0

    .line 295
    .end local v2           #s:Ljava/lang/Thread$State;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_4
    const/4 v8, 0x2

    :try_start_3
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, ": Alert, no URI?"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 306
    .end local v0           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #uri:Ljava/net/URI;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 303
    .restart local v0       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_5
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Alert, no pending POST"

    aput-object v9, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 304
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 329
    .restart local v2       #s:Ljava/lang/Thread$State;
    :cond_6
    :try_start_5
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 311
    .end local v2           #s:Ljava/lang/Thread$State;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;
    .locals 1
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;
    .locals 6
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .parameter "isPingCommand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1332
    :try_start_0
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1333
    add-int/lit16 v2, p3, 0x7530

    int-to-long v0, v2

    .line 1334
    .local v0, alarmTime:J
    if-eqz p4, :cond_0

    .line 1335
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v0, v1}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 1339
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    :try_start_1
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/exchange/EasResponse;->fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 1343
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1344
    if-eqz p4, :cond_1

    .line 1345
    :try_start_2
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1349
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1350
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 1337
    :cond_0
    :try_start_3
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v0, v1}, Lcom/android/exchange/ExchangeService;->setWatchdogAlarm(JJ)V

    goto :goto_0

    .line 1339
    .end local v0           #alarmTime:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1347
    .restart local v0       #alarmTime:J
    :cond_1
    :try_start_4
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    goto :goto_1

    .line 1350
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1343
    :catchall_2
    move-exception v2

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1344
    if-eqz p4, :cond_2

    .line 1345
    :try_start_5
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1349
    :goto_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1350
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    .line 1347
    :cond_2
    :try_start_6
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    goto :goto_2

    .line 1350
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 1230
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1231
    if-eqz p1, :cond_0

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?Cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    :cond_0
    if-eqz p2, :cond_1

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    :cond_1
    return-object v0
.end method

.method protected messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1095
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 1096
    if-nez v6, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "mailboxKey"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1099
    if-nez v1, :cond_2

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 1102
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1103
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1107
    if-eqz v0, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/exchange/MessageMoveRequest;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1109
    if-eqz v1, :cond_0

    .line 1110
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1111
    const/16 v3, 0x145

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x146

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1112
    const/16 v3, 0x147

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1113
    const/16 v3, 0x148

    iget-object v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1114
    const/16 v3, 0x149

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1115
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1116
    const-string v1, "MoveItems"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1118
    :try_start_2
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 1119
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_8

    .line 1120
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1121
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1122
    new-instance v3, Lcom/android/exchange/adapter/MoveItemsParser;

    invoke-direct {v3, v2, p0}, Lcom/android/exchange/adapter/MoveItemsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1123
    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->parse()Z

    .line 1124
    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->getStatusCode()I

    move-result v2

    .line 1125
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    if-ne v2, v9, :cond_7

    .line 1128
    const-string v3, "mailboxKey"

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1140
    :cond_4
    :goto_1
    if-eq v2, v7, :cond_5

    if-ne v2, v9, :cond_6

    .line 1144
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1158
    :cond_6
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 1105
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1132
    :cond_7
    if-ne v2, v7, :cond_4

    .line 1134
    :try_start_3
    const-string v0, "syncServerId"

    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->getNewServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string v0, "flags"

    iget v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v3, v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1158
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    .line 1151
    :cond_8
    :try_start_4
    invoke-static {v2}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1152
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0

    .line 1154
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Move items request failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1155
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 901
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    return-void

    .line 903
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 904
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 905
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    const-string v1, "Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 908
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    :cond_2
    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 955
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 956
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Autodiscover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    return-void

    .line 958
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 939
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    return-void

    .line 941
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 942
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 943
    const-string v1, "User"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 944
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 945
    :cond_2
    const-string v1, "Action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 856
    move v0, v1

    .line 858
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 859
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Server"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 880
    return-void

    .line 861
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 862
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 863
    const-string v4, "Type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 864
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MobileSync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 865
    goto :goto_0

    .line 867
    :cond_2
    if-eqz v0, :cond_0

    const-string v4, "Url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 868
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 871
    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "/microsoft-server-activesync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 873
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 874
    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 875
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Autodiscover, server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 886
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    return-void

    .line 888
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 889
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 890
    const-string v1, "Server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 919
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 920
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    return-void

    .line 922
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 923
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 924
    const-string v1, "EMailAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 925
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 926
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :cond_2
    const-string v1, "DisplayName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 929
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 339
    .local v1, uri:Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, query:Ljava/lang/String;
    const-string v2, "Cmd=Ping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Reset, aborting Ping"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 343
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 344
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 348
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #uri:Ljava/net/URI;
    :cond_0
    monitor-exit v3

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method resetHeartbeats(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1921
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting min/max heartbeat, legal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1925
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-le p1, v0, :cond_3

    .line 1929
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_0

    .line 1930
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 1932
    :cond_0
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_1

    .line 1933
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 1936
    :cond_1
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v0, v1, :cond_2

    .line 1937
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 1949
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 1951
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 1952
    return-void

    .line 1939
    :cond_3
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_2

    .line 1942
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 1944
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, v1, :cond_2

    .line 1945
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v2, 0x20

    const/4 v3, 0x0

    .line 2574
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2689
    :cond_0
    :goto_0
    return-void

    .line 2576
    :cond_1
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2580
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 2581
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    .line 2582
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v1, :cond_3

    .line 2630
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2631
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_10

    .line 2632
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2633
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_0

    .line 2659
    :pswitch_0
    const/16 v0, 0x15

    .line 2660
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2674
    :goto_1
    :try_start_3
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_13

    if-ne v0, v2, :cond_13

    .line 2678
    :goto_2
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2684
    :goto_3
    :try_start_4
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2686
    :catch_0
    move-exception v0

    .line 2687
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "EmailProvider unavailable; sync ended prematurely"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2584
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v4, 0x44

    if-ne v1, v4, :cond_4

    .line 2585
    or-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2586
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->runAccountMailbox()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2630
    :goto_4
    :try_start_6
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2631
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_11

    .line 2632
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2633
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1

    .line 2659
    :pswitch_1
    const/16 v0, 0x15

    .line 2660
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2674
    :goto_5
    :try_start_7
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_12

    if-ne v0, v2, :cond_12

    .line 2678
    :goto_6
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2684
    :goto_7
    :try_start_8
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 2589
    :cond_4
    :try_start_9
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v4, 0x42

    if-ne v1, v4, :cond_9

    .line 2590
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2591
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 2602
    :cond_5
    :goto_8
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 2603
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Looping for user request..."

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2604
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    .line 2606
    :cond_6
    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    .line 2607
    iget v4, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-ge v4, v5, :cond_7

    const-string v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result v1

    if-eqz v1, :cond_8

    .line 2610
    :cond_7
    :try_start_a
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 2616
    :cond_8
    :goto_9
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 2617
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    goto/16 :goto_4

    .line 2592
    :cond_9
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v4, 0x41

    if-ne v1, v4, :cond_a

    .line 2593
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2594
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_8

    .line 2619
    :catch_1
    move-exception v0

    .line 2620
    const/4 v0, 0x1

    :try_start_c
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Caught authentication error"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2621
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2630
    :try_start_d
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2631
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_d

    .line 2632
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2633
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_2

    .line 2659
    :pswitch_2
    const/16 v0, 0x15

    .line 2660
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_d .. :try_end_d} :catch_0

    .line 2674
    :goto_a
    :try_start_e
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_16

    if-ne v0, v2, :cond_16

    .line 2678
    :goto_b
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_e .. :try_end_e} :catch_0

    .line 2684
    :goto_c
    :try_start_f
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_f
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    .line 2596
    :cond_a
    or-int/lit8 v0, v0, 0x0

    :try_start_10
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2597
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_8

    .line 2622
    :catch_2
    move-exception v0

    .line 2623
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2624
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Caught IOException: "

    aput-object v5, v1, v4

    const/4 v4, 0x1

    if-nez v0, :cond_b

    const-string v0, "No message"

    :cond_b
    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2625
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2630
    :try_start_12
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2631
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_e

    .line 2632
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2633
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_3

    .line 2659
    :pswitch_3
    const/16 v0, 0x15

    .line 2660
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_12 .. :try_end_12} :catch_0

    .line 2674
    :goto_d
    :try_start_13
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_15

    if-ne v0, v2, :cond_15

    .line 2678
    :goto_e
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_13 .. :try_end_13} :catch_0

    .line 2684
    :goto_f
    :try_start_14
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 2626
    :catch_3
    move-exception v0

    .line 2627
    :try_start_15
    const-string v1, "Uncaught exception in EasSyncService"

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2630
    :try_start_16
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2631
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_f

    .line 2632
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2633
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_4

    .line 2659
    :pswitch_4
    const/16 v0, 0x15

    .line 2660
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_16
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_16 .. :try_end_16} :catch_0

    .line 2674
    :goto_10
    :try_start_17
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_14

    if-ne v0, v2, :cond_14

    .line 2678
    :goto_11
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_17 .. :try_end_17} :catch_0

    .line 2684
    :goto_12
    :try_start_18
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_0

    :pswitch_5
    move v1, v2

    .line 2674
    :goto_13
    :try_start_19
    iget v4, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_17

    if-ne v1, v2, :cond_17

    .line 2678
    :goto_14
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v4, v5, v3, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_9
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_19 .. :try_end_19} :catch_0

    .line 2684
    :goto_15
    :try_start_1a
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2629
    throw v0

    :catchall_0
    move-exception v0

    .line 2630
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2631
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_c

    .line 2632
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sync finished"

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2633
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_5

    .line 2659
    :pswitch_6
    const/16 v1, 0x15

    .line 2660
    const-string v4, "Sync ended due to an exception."

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_13

    .line 2664
    :cond_c
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Stopped sync finished."

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v1, v3

    .line 2665
    goto :goto_13

    .line 2638
    :pswitch_7
    const/4 v1, 0x0

    .line 2639
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2640
    const-string v5, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2642
    const-string v5, "syncStatus"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v3

    .line 2645
    goto/16 :goto_13

    .line 2647
    :pswitch_8
    const/16 v1, 0x16

    .line 2648
    goto/16 :goto_13

    .line 2650
    :pswitch_9
    const/16 v1, 0x17

    .line 2653
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_13

    .line 2656
    :pswitch_a
    const/16 v1, 0x19

    .line 2657
    goto/16 :goto_13

    .line 2664
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2665
    goto/16 :goto_a

    .line 2638
    :pswitch_b
    const/4 v0, 0x0

    .line 2639
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2640
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2642
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2645
    goto/16 :goto_a

    :pswitch_c
    move v0, v2

    .line 2636
    goto/16 :goto_a

    .line 2647
    :pswitch_d
    const/16 v0, 0x16

    .line 2648
    goto/16 :goto_a

    .line 2650
    :pswitch_e
    const/16 v0, 0x17

    .line 2653
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_a

    .line 2656
    :pswitch_f
    const/16 v0, 0x19

    .line 2657
    goto/16 :goto_a

    .line 2664
    :cond_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2665
    goto/16 :goto_d

    .line 2638
    :pswitch_10
    const/4 v0, 0x0

    .line 2639
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2640
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2642
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2645
    goto/16 :goto_d

    :pswitch_11
    move v0, v2

    .line 2636
    goto/16 :goto_d

    .line 2647
    :pswitch_12
    const/16 v0, 0x16

    .line 2648
    goto/16 :goto_d

    .line 2650
    :pswitch_13
    const/16 v0, 0x17

    .line 2653
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_d

    .line 2656
    :pswitch_14
    const/16 v0, 0x19

    .line 2657
    goto/16 :goto_d

    .line 2664
    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2665
    goto/16 :goto_10

    .line 2638
    :pswitch_15
    const/4 v0, 0x0

    .line 2639
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2640
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2642
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2645
    goto/16 :goto_10

    :pswitch_16
    move v0, v2

    .line 2636
    goto/16 :goto_10

    .line 2647
    :pswitch_17
    const/16 v0, 0x16

    .line 2648
    goto/16 :goto_10

    .line 2650
    :pswitch_18
    const/16 v0, 0x17

    .line 2653
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_10

    .line 2656
    :pswitch_19
    const/16 v0, 0x19

    .line 2657
    goto/16 :goto_10

    .line 2664
    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2665
    goto/16 :goto_1

    .line 2638
    :pswitch_1a
    const/4 v0, 0x0

    .line 2639
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2640
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2642
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2645
    goto/16 :goto_1

    :pswitch_1b
    move v0, v2

    .line 2636
    goto/16 :goto_1

    .line 2647
    :pswitch_1c
    const/16 v0, 0x16

    .line 2648
    goto/16 :goto_1

    .line 2650
    :pswitch_1d
    const/16 v0, 0x17

    .line 2653
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_1

    .line 2656
    :pswitch_1e
    const/16 v0, 0x19

    .line 2657
    goto/16 :goto_1

    .line 2664
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2665
    goto/16 :goto_5

    .line 2638
    :pswitch_1f
    const/4 v0, 0x0

    .line 2639
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2640
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2642
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2645
    goto/16 :goto_5

    :pswitch_20
    move v0, v2

    .line 2636
    goto/16 :goto_5

    .line 2647
    :pswitch_21
    const/16 v0, 0x16

    .line 2648
    goto/16 :goto_5

    .line 2650
    :pswitch_22
    const/16 v0, 0x17

    .line 2653
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V
    :try_end_1a
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_5

    .line 2656
    :pswitch_23
    const/16 v0, 0x19

    .line 2657
    goto/16 :goto_5

    .line 2679
    :catch_4
    move-exception v0

    goto/16 :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto/16 :goto_12

    :catch_7
    move-exception v0

    goto/16 :goto_f

    :catch_8
    move-exception v0

    goto/16 :goto_c

    :catch_9
    move-exception v1

    goto/16 :goto_15

    .line 2612
    :catch_a
    move-exception v1

    goto/16 :goto_9

    :cond_12
    move v3, v0

    goto/16 :goto_6

    :cond_13
    move v3, v0

    goto/16 :goto_2

    :cond_14
    move v3, v0

    goto/16 :goto_11

    :cond_15
    move v3, v0

    goto/16 :goto_e

    :cond_16
    move v3, v0

    goto/16 :goto_b

    :cond_17
    move v3, v1

    goto/16 :goto_14

    .line 2633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_1
        :pswitch_22
        :pswitch_23
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_3
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_4
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public runAccountMailbox()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/adapter/Parser$EasParserException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xc8

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1697
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 1699
    iput v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 1702
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1708
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 1710
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Account syncKey INIT to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1711
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1712
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1717
    if-eqz v0, :cond_1

    .line 1718
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Initial FolderSync"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1722
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1723
    const-string v2, "syncInterval"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1724
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and syncInterval=-3"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1727
    const-string v2, "change ping boxes to push"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1732
    :cond_2
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1734
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Determine EAS protocol version"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    :try_end_1
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1737
    :try_start_2
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1738
    const-string v3, "OPTIONS response: "

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1739
    if-ne v0, v12, :cond_8

    .line 1740
    const-string v0, "MS-ASProtocolCommands"

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1741
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1742
    const-string v0, "ms-asprotocolversions"

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1744
    :try_start_3
    invoke-direct {p0, p0, v0}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1751
    :try_start_4
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1754
    const-string v0, "protocolVersion"

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1756
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1758
    const-string v0, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1759
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1768
    :try_start_5
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    .line 1773
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4028

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_5

    .line 1775
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1776
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v2, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v2, v2, 0x80

    or-int/lit16 v2, v2, 0x800

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 1778
    const-string v0, "flags"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v2, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1779
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1783
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    if-ne v0, v11, :cond_6

    .line 1784
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1785
    const-string v0, "syncInterval"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1786
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and type in (0,68,66,65)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    .line 1789
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Push account; set pushable boxes to push..."

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1793
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_7

    .line 1795
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z
    :try_end_5
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v0

    if-nez v0, :cond_a

    .line 1914
    :cond_7
    :goto_2
    return-void

    .line 1745
    :catch_0
    move-exception v0

    .line 1748
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1768
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
    :try_end_7
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1872
    :catch_1
    move-exception v0

    .line 1878
    iget v0, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 1879
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1880
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->tryProvision()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1882
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_2

    .line 1760
    :cond_8
    const/16 v1, 0x1c3

    if-ne v0, v1, :cond_9

    :try_start_8
    invoke-direct {p0, v2}, Lcom/android/exchange/EasSyncService;->canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1762
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Will retry after a brief hold..."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1764
    :cond_9
    const-string v0, "OPTIONS command failed; throwing IOException"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1765
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1796
    :cond_a
    const/4 v0, 0x2

    :try_start_9
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Sending Account syncKey: "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1797
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1798
    const/16 v2, 0x1d6

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1d2

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1800
    const-string v2, "FolderSync"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v2

    .line 1802
    :try_start_a
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v0, :cond_c

    .line 1826
    :try_start_b
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_b
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 1898
    :catch_2
    move-exception v0

    .line 1902
    :try_start_c
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_b

    .line 1906
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6

    .line 1912
    :cond_b
    :goto_3
    throw v0

    .line 1803
    :cond_c
    :try_start_d
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1804
    if-ne v0, v12, :cond_d

    .line 1805
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1806
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1808
    new-instance v3, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v4, Lcom/android/exchange/adapter/AccountSyncAdapter;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v3, v0, v4}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    invoke-virtual {v3}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v0

    if-eqz v0, :cond_11

    .line 1826
    :try_start_e
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_e
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_1

    .line 1812
    :cond_d
    :try_start_f
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1813
    const-string v1, "FolderSync provisioning error: "

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1814
    new-instance v0, Lcom/android/exchange/CommandStatusException;

    const/16 v1, 0x8e

    invoke-direct {v0, v1}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1826
    :catchall_1
    move-exception v0

    :try_start_10
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
    :try_end_10
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 1815
    :cond_e
    :try_start_11
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1816
    const-string v1, "FolderSync auth error: "

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1817
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1826
    :try_start_12
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_12
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_2

    .line 1819
    :cond_f
    const/16 v3, 0x1c3

    if-ne v0, v3, :cond_10

    :try_start_13
    invoke-direct {p0, v2}, Lcom/android/exchange/EasSyncService;->canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v3

    if-eqz v3, :cond_10

    .line 1826
    :try_start_14
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_14
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_1

    .line 1823
    :cond_10
    :try_start_15
    const-string v3, "FolderSync response error: "

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1826
    :cond_11
    :try_start_16
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    .line 1830
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1831
    const-string v0, "syncInterval"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1832
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and syncInterval=-4"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_12

    .line 1835
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Set push/hold boxes to push..."

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_16
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2

    .line 1839
    :cond_12
    :try_start_17
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-direct {p0, v4}, Lcom/android/exchange/EasSyncService;->exitStatusToServiceStatus(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2

    .line 1849
    :goto_4
    :try_start_18
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1850
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1851
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 1852
    if-eqz v0, :cond_13

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/exchange/SecurityPolicyDelegate;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1853
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->resetSecurityPolicies()V

    .line 1858
    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_18
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2

    move-result-object v2

    .line 1860
    :try_start_19
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->runPingLoop()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Lcom/android/exchange/StaleFolderListException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Lcom/android/exchange/IllegalHeartbeatException; {:try_start_19 .. :try_end_19} :catch_4

    .line 1869
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2

    goto/16 :goto_1

    .line 1861
    :catch_3
    move-exception v0

    .line 1863
    const/4 v0, 0x1

    :try_start_1b
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Ping interrupted; folder list requires sync..."

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 1869
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_1c
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2

    goto/16 :goto_1

    .line 1864
    :catch_4
    move-exception v0

    .line 1867
    :try_start_1d
    iget v0, v0, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->resetHeartbeats(I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1869
    :try_start_1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2

    .line 1885
    :cond_14
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1886
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 1888
    :try_start_1f
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_5

    goto/16 :goto_2

    .line 1890
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 1895
    :cond_15
    new-array v1, v10, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1896
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_2

    .line 1909
    :catch_6
    move-exception v1

    goto/16 :goto_3

    .line 1842
    :catch_7
    move-exception v0

    goto/16 :goto_4

    .line 1704
    :catch_8
    move-exception v0

    goto/16 :goto_0
.end method

.method protected sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 1396
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1397
    new-instance v1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 1398
    const-string v0, "Authorization"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v0, "User-Agent"

    sget-object v2, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1401
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/exchange/EasResponse;->fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1356
    invoke-direct {p0, p3}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 1357
    const-string v0, "Ping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1360
    const/4 v0, 0x0

    .line 1362
    const-string v3, "SmartForward&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SmartReply&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1363
    :cond_0
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1364
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1365
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v3, v0

    move v0, v1

    .line 1371
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1372
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 1376
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x402c

    cmpg-double v0, v7, v9

    if-gez v0, :cond_4

    .line 1377
    const-string v0, "Content-Type"

    const-string v3, "message/rfc822"

    invoke-virtual {v6, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_1
    :goto_1
    if-nez v5, :cond_5

    :goto_2
    invoke-virtual {p0, v6, v1}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 1386
    if-eqz v5, :cond_2

    .line 1387
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {v6, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :cond_2
    invoke-virtual {v6, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1390
    invoke-virtual {p0, v4, v6, p3, v5}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0

    .line 1367
    :cond_3
    const-string v3, "SendMail&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v0

    move v0, v1

    .line 1368
    goto :goto_0

    .line 1378
    :cond_4
    if-eqz p2, :cond_1

    .line 1379
    const-string v0, "Content-Type"

    const-string v3, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v6, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 1381
    goto :goto_2

    :cond_6
    move-object v3, v0

    move v0, v2

    goto :goto_0
.end method

.method public sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    .locals 2
    .parameter "cmd"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v1, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1171
    if-nez v0, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1173
    if-eqz v1, :cond_0

    .line 1174
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1175
    const/16 v3, 0x207

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x209

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1176
    const/16 v3, 0x20c

    iget v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1177
    const/16 v3, 0x206

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1178
    const/16 v1, 0x208

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1179
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1180
    const-string v1, "MeetingResponse"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1182
    :try_start_0
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 1183
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 1184
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1185
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1186
    new-instance v3, Lcom/android/exchange/adapter/MeetingResponseParser;

    invoke-direct {v3, v2, p0}, Lcom/android/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    invoke-virtual {v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 1187
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1188
    if-eqz v2, :cond_2

    .line 1189
    new-instance v3, Lcom/android/emailcommon/mail/PackedString;

    invoke-direct {v3, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v2, "RESPONSE"

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1205
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    goto :goto_0

    .line 1196
    :cond_2
    :try_start_1
    iget v2, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-direct {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    :cond_3
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 1198
    :cond_4
    :try_start_2
    invoke-static {v2}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1199
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1205
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    .line 1201
    :cond_5
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Meeting response request failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1202
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected sendPing([BI)Lcom/android/exchange/EasResponse;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1306
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1307
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send ping, timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s, high: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1309
    :cond_0
    const-string v0, "Ping"

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    add-int/lit8 v2, p2, 0x5

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected setConnectionParameters(ZZLjava/lang/String;)V
    .locals 4
    .parameter "useSsl"
    .parameter "trustAllServerCerts"
    .parameter "clientCertAlias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 1271
    .local v0, connManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    iput-boolean p1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1272
    iput-boolean p2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1273
    iput-object p3, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 1276
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->registerClientCert(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1281
    :cond_0
    return-void
.end method

.method setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1246
    const-string v0, "Authorization"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v0, "MS-ASProtocolVersion"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v0, "User-Agent"

    sget-object v1, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    if-eqz p2, :cond_0

    .line 1254
    const-string v1, "0"

    .line 1255
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1261
    :goto_0
    const-string v1, "X-MS-PolicyKey"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected setupService()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2503
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2504
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 2505
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2506
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    .line 2507
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2509
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 2510
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v2, :cond_1

    .line 2553
    :cond_0
    :goto_0
    return v0

    .line 2507
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2511
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 2512
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_0

    .line 2513
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 2514
    if-eqz v4, :cond_0

    .line 2515
    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 2516
    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 2517
    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 2520
    :try_start_2
    iget v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    move v3, v1

    :goto_1
    iget v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    move v2, v1

    :goto_2
    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(ZZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2536
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2538
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2539
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2541
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 2544
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 2545
    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v0, :cond_3

    .line 2551
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->resetSecurityPolicies()V

    :cond_3
    move v0, v1

    .line 2553
    goto :goto_0

    :cond_4
    move v3, v0

    .line 2520
    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_2

    .line 2524
    :catch_0
    move-exception v2

    .line 2525
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Couldn\'t retrieve certificate for connection"

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2527
    :try_start_3
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2529
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 354
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 358
    :cond_0
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2314
    iget-object v3, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 2316
    const/4 v1, 0x1

    .line 2317
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    .line 2318
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_1a

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasPendingRequests()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2321
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2322
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No connectivity in sync; finishing sync"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2500
    :goto_1
    return-void

    .line 2328
    :cond_2
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isSyncable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2329
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_1

    .line 2340
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/Request;

    .line 2345
    instance-of v4, v0, Lcom/android/exchange/PartRequest;

    if-eqz v4, :cond_b

    .line 2346
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v4, v5}, Lcom/android/emailcommon/TrafficFlags;->getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2348
    new-instance v4, Lcom/android/exchange/adapter/AttachmentLoader;

    check-cast v0, Lcom/android/exchange/PartRequest;

    invoke-direct {v4, p0, v0}, Lcom/android/exchange/adapter/AttachmentLoader;-><init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/PartRequest;)V

    invoke-virtual {v4}, Lcom/android/exchange/adapter/AttachmentLoader;->loadAttachment()V

    .line 2349
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v4}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2358
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    .line 2337
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2362
    if-eqz v2, :cond_0

    .line 2366
    new-instance v4, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v4}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2368
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    .line 2369
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    .line 2370
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "sync, sending "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    const-string v8, " syncKey: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2371
    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2375
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x4028333333333333L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_6

    .line 2376
    const/16 v6, 0x10

    invoke-virtual {v4, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2378
    :cond_6
    const/16 v0, 0xb

    invoke-virtual {v4, v0, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v6, 0x12

    iget-object v7, v3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2382
    const/16 v0, 0x7530

    .line 2383
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2389
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {p1, v5, v4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V

    .line 2395
    :goto_3
    iget-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    if-eqz v5, :cond_e

    .line 2396
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_7

    .line 2397
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v6, "Inhibiting upsync this cycle"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :cond_7
    :goto_4
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2404
    const-string v5, "Sync"

    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v4

    .line 2407
    :try_start_0
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 2408
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_16

    .line 2414
    const/4 v0, 0x0

    .line 2415
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    .line 2416
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 2418
    :try_start_1
    invoke-virtual {p1, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v2

    .line 2420
    iget-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    if-eqz v5, :cond_8

    .line 2421
    const/4 v2, 0x1

    .line 2424
    :cond_8
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isLooping()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2425
    add-int/lit8 v1, v1, 0x1

    .line 2426
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Looping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2429
    if-eqz v2, :cond_9

    const/16 v5, 0x64

    if-le v1, v5, :cond_9

    .line 2430
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "** Looping force stopped"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2431
    const/4 v2, 0x0

    .line 2439
    :cond_9
    :goto_5
    iget-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    if-nez v5, :cond_10

    .line 2440
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    move v10, v0

    move v0, v1

    move v1, v2

    move v2, v10

    .line 2465
    :goto_7
    if-eqz v2, :cond_19

    .line 2468
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Empty sync response; finishing"

    aput-object v6, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2469
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_a

    .line 2470
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Changing mailbox from push to ping"

    aput-object v6, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2471
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2472
    const-string v5, "syncInterval"

    const/4 v6, -0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2473
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2477
    :cond_a
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2496
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 2350
    :cond_b
    instance-of v4, v0, Lcom/android/exchange/MeetingResponseRequest;

    if-eqz v4, :cond_c

    .line 2351
    check-cast v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V

    goto/16 :goto_2

    .line 2352
    :cond_c
    instance-of v4, v0, Lcom/android/exchange/MessageMoveRequest;

    if-eqz v4, :cond_4

    .line 2353
    check-cast v0, Lcom/android/exchange/MessageMoveRequest;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V

    goto/16 :goto_2

    .line 2392
    :cond_d
    const v0, 0x1d4c0

    goto/16 :goto_3

    .line 2400
    :cond_e
    invoke-virtual {p1, v4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    goto/16 :goto_4

    .line 2434
    :cond_f
    const/4 v1, 0x0

    goto :goto_5

    .line 2442
    :cond_10
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 2444
    :catch_0
    move-exception v0

    .line 2445
    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Empty stream detected in GZIP response"

    aput-object v6, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2446
    const/4 v0, 0x1

    .line 2460
    goto/16 :goto_6

    .line 2447
    :catch_1
    move-exception v0

    .line 2449
    iget v0, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 2450
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2451
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2496
    :goto_8
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 2452
    :cond_11
    :try_start_5
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2453
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    .line 2496
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    .line 2454
    :cond_12
    :try_start_6
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2455
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_8

    .line 2457
    :cond_13
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 2462
    :cond_14
    const/4 v0, 0x1

    move v10, v0

    move v0, v1

    move v1, v2

    move v2, v10

    goto/16 :goto_7

    .line 2496
    :cond_15
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 2485
    :cond_16
    :try_start_7
    const-string v1, "Sync response error: "

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2486
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2487
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2496
    :goto_9
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 2488
    :cond_17
    :try_start_8
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2489
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_9

    .line 2491
    :cond_18
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    .line 2496
    :cond_19
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    move v2, v1

    move v1, v0

    .line 2498
    goto/16 :goto_0

    .line 2499
    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_1
.end method

.method public tryAutodiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 727
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 728
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 729
    new-instance v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 730
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 731
    const-string v4, "autodiscover_error_code"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    :try_start_0
    const-string v4, "UTF-8"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 736
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 737
    const/4 v4, 0x0

    const-string v5, "Autodiscover"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    const/4 v4, 0x0

    const-string v5, "xmlns"

    const-string v6, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    invoke-interface {v2, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 739
    const/4 v4, 0x0

    const-string v5, "Request"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 740
    const/4 v4, 0x0

    const-string v5, "EMailAddress"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "EMailAddress"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 741
    const/4 v4, 0x0

    const-string v5, "AcceptableResponseSchema"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 742
    const-string v4, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 743
    const/4 v4, 0x0

    const-string v5, "AcceptableResponseSchema"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 744
    const/4 v4, 0x0

    const-string v5, "Request"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 745
    const/4 v4, 0x0

    const-string v5, "Autodiscover"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 747
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    iput-object p1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 751
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 753
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 756
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 758
    if-gez v3, :cond_0

    .line 759
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 837
    :catch_0
    move-exception v0

    .line 838
    const-string v0, "autodiscover_error_code"

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    move-object v0, v1

    .line 851
    :goto_1
    return-object v0

    .line 761
    :cond_0
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 770
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/autodiscover/autodiscover.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 771
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 772
    const-string v5, "Content-Type"

    const-string v6, "text/xml"

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 774
    const/16 v2, 0x7530

    invoke-direct {p0, v2}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v2

    .line 777
    const/4 v5, 0x1

    :try_start_2
    invoke-direct {p0, v2, v4, v5}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v2

    .line 789
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v3

    .line 790
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4

    .line 791
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 833
    :try_start_4
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 840
    :catch_1
    move-exception v0

    .line 841
    const-string v0, "autodiscover_error_code"

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 778
    :catch_2
    move-exception v5

    .line 779
    const/4 v5, 0x1

    :try_start_5
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "IOException in autodiscover; trying alternate address"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://autodiscover."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/autodiscover/autodiscover.xml"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 784
    const/4 v3, 0x1

    invoke-direct {p0, v2, v4, v3}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto :goto_2

    .line 793
    :cond_1
    :try_start_6
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 796
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 797
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 798
    const-string v4, "UTF-8"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 799
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 800
    if-nez v0, :cond_2

    .line 801
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 802
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 803
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 804
    const-string v4, "Autodiscover"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 806
    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasSyncService;->parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 808
    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 812
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 813
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 816
    const/16 v3, 0x1bb

    iput v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 817
    const-string v3, "eas"

    iput-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 818
    const/4 v3, 0x5

    iput v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 820
    const-string v3, "autodiscover_host_auth"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4

    .line 833
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 843
    :catch_3
    move-exception v0

    .line 844
    const-string v2, "IOException in Autodiscover"

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 845
    const-string v0, "autodiscover_error_code"

    invoke-virtual {v1, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 823
    :cond_3
    :try_start_8
    const-string v0, "autodiscover_error_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 829
    :catch_4
    move-exception v0

    .line 833
    :try_start_9
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 847
    :catch_5
    move-exception v0

    .line 848
    const-string v0, "autodiscover_error_code"

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 833
    :catchall_0
    move-exception v0

    :try_start_a
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_5
.end method

.method public validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 23
    .parameter "hostAuth"
    .parameter "context"

    .prologue
    .line 489
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 490
    .local v5, bundle:Landroid/os/Bundle;
    const/4 v14, -0x1

    .line 492
    .local v14, resultCode:I
    const/16 v19, 0x6

    :try_start_0
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    const-string v21, "Testing EAS: "

    aput-object v21, v20, v19

    const/16 v19, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v20, v19

    const/16 v19, 0x2

    const-string v21, ", "

    aput-object v21, v20, v19

    const/16 v19, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v20, v19

    const/16 v19, 0x4

    const-string v21, ", ssl = "

    aput-object v21, v20, v19

    const/16 v21, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "1"

    :goto_0
    aput-object v19, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 495
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 496
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 497
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(ZZLjava/lang/String;)V

    .line 503
    invoke-static/range {p2 .. p2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 504
    new-instance v19, Lcom/android/emailcommon/provider/Account;

    invoke-direct/range {v19 .. v19}, Lcom/android/emailcommon/provider/Account;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v13

    .line 508
    .local v13, resp:Lcom/android/exchange/EasResponse;
    :try_start_1
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v7

    .line 509
    .local v7, code:I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Validation (OPTIONS) response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 510
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v7, v0, :cond_e

    .line 512
    const-string v19, "MS-ASProtocolCommands"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 513
    .local v8, commands:Lorg/apache/http/Header;
    const-string v19, "ms-asprotocolversions"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 516
    .local v18, versions:Lorg/apache/http/Header;
    if-eqz v8, :cond_0

    if-nez v18, :cond_2

    .line 517
    :cond_0
    const/16 v19, 0x1

    :try_start_2
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "OPTIONS response without commands or versions"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 519
    new-instance v19, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2 .. :try_end_2} :catch_1

    .line 522
    :catch_0
    move-exception v9

    .line 523
    .local v9, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    const-string v19, "validate_result_code"

    const/16 v20, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3 .. :try_end_3} :catch_1

    .line 629
    :try_start_4
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V

    .line 646
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v7           #code:I
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v9           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    .end local v18           #versions:Lorg/apache/http/Header;
    :goto_1
    return-object v5

    .line 492
    .restart local v5       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v19, "0"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 521
    .restart local v7       #code:I
    .restart local v8       #commands:Lorg/apache/http/Header;
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    .restart local v18       #versions:Lorg/apache/http/Header;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_5 .. :try_end_5} :catch_1

    .line 529
    const/16 v19, 0x1

    :try_start_6
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Try folder sync"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 531
    const-string v17, "0"

    .line 532
    .local v17, syncKey:Ljava/lang/String;
    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v10

    .line 534
    .local v10, existingAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v10, :cond_3

    iget-object v0, v10, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 535
    iget-object v0, v10, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 537
    :cond_3
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v15}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 538
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v19, 0x1d6

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x1d2

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 540
    const-string v19, "FolderSync"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v13

    .line 541
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getStatus()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v7

    .line 543
    const/16 v19, 0x193

    move/from16 v0, v19

    if-ne v7, v0, :cond_4

    .line 546
    const/16 v14, 0xe

    .line 629
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v10           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #syncKey:Ljava/lang/String;
    .end local v18           #versions:Lorg/apache/http/Header;
    :goto_2
    :try_start_7
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_3

    .line 645
    .end local v7           #code:I
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    :goto_3
    const-string v19, "validate_result_code"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 547
    .restart local v7       #code:I
    .restart local v8       #commands:Lorg/apache/http/Header;
    .restart local v10       #existingAccount:Lcom/android/emailcommon/provider/Account;
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v17       #syncKey:Ljava/lang/String;
    .restart local v18       #versions:Lorg/apache/http/Header;
    :cond_4
    :try_start_8
    invoke-static {v7}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 549
    new-instance v19, Lcom/android/exchange/CommandStatusException;

    const/16 v20, 0x8e

    invoke-direct/range {v19 .. v20}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_8 .. :try_end_8} :catch_1

    .line 595
    .end local v7           #code:I
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v10           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #syncKey:Ljava/lang/String;
    .end local v18           #versions:Lorg/apache/http/Header;
    :catch_1
    move-exception v9

    .line 596
    .local v9, e:Lcom/android/exchange/CommandStatusException;
    :try_start_9
    iget v0, v9, Lcom/android/exchange/CommandStatusException;->mStatus:I

    move/from16 v16, v0

    .line 597
    .local v16, status:I
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v12

    .line 600
    .local v12, pp:Lcom/android/exchange/adapter/ProvisionParser;
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 602
    const/4 v14, 0x7

    .line 603
    const-string v19, "validate_policy_set"

    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide/high16 v21, 0x402c

    cmpl-double v19, v19, v21

    if-nez v19, :cond_5

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->sendSettings()Z

    move-result v19

    if-nez v19, :cond_5

    .line 608
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Denied access: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 609
    const/16 v14, 0xe

    .line 615
    :cond_5
    :goto_4
    const-string v20, "validate_unsupported_policies"

    if-nez v12, :cond_14

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 629
    .end local v12           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :goto_6
    :try_start_a
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    .line 631
    .end local v9           #e:Lcom/android/exchange/CommandStatusException;
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    .end local v16           #status:I
    :catch_2
    move-exception v9

    .line 632
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 633
    .local v6, cause:Ljava/lang/Throwable;
    if-eqz v6, :cond_6

    instance-of v0, v6, Ljava/security/cert/CertificateException;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 635
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "CertificateException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 636
    const/4 v14, 0x4

    .line 638
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "IOException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 639
    const/4 v14, 0x1

    .line 644
    goto/16 :goto_3

    .line 550
    .end local v6           #cause:Ljava/lang/Throwable;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #code:I
    .restart local v8       #commands:Lorg/apache/http/Header;
    .restart local v10       #existingAccount:Lcom/android/emailcommon/provider/Account;
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v17       #syncKey:Ljava/lang/String;
    .restart local v18       #versions:Lorg/apache/http/Header;
    :cond_7
    const/16 v19, 0x194

    move/from16 v0, v19

    if-ne v7, v0, :cond_8

    .line 552
    const/16 v14, 0x9

    goto/16 :goto_2

    .line 553
    :cond_8
    const/16 v19, 0x191

    move/from16 v0, v19

    if-ne v7, v0, :cond_a

    .line 554
    :try_start_b
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->isMissingCertificate()Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v14, 0x10

    :goto_7
    goto/16 :goto_2

    :cond_9
    const/4 v14, 0x5

    goto :goto_7

    .line 557
    :cond_a
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v7, v0, :cond_c

    .line 558
    const/16 v19, 0x1c3

    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/exchange/EasSyncService;->getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 560
    invoke-virtual/range {p0 .. p2}, Lcom/android/exchange/EasSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v19

    .line 629
    :try_start_c
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_3

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 563
    :cond_b
    :try_start_d
    const-string v19, "Unexpected response for FolderSync: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 564
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 568
    :cond_c
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_d

    .line 569
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 573
    .local v11, is:Ljava/io/InputStream;
    new-instance v19, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v20, Lcom/android/exchange/adapter/AccountSyncAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v11, v1, v2}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z

    .line 575
    .end local v11           #is:Ljava/io/InputStream;
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Validation successful"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_2

    .line 629
    .end local v7           #code:I
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v10           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #syncKey:Ljava/lang/String;
    .end local v18           #versions:Lorg/apache/http/Header;
    :catchall_0
    move-exception v19

    :try_start_e
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V

    throw v19
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_3

    .line 640
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    :catch_3
    move-exception v9

    .line 642
    .local v9, e:Ljava/security/cert/CertificateException;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "CertificateException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 643
    const/16 v14, 0x11

    goto/16 :goto_3

    .line 577
    .end local v9           #e:Ljava/security/cert/CertificateException;
    .restart local v7       #code:I
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    :cond_e
    :try_start_f
    invoke-static {v7}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 578
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Authentication failed"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 579
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->isMissingCertificate()Z

    move-result v19

    if-eqz v19, :cond_f

    const/16 v14, 0x10

    :goto_8
    goto/16 :goto_2

    :cond_f
    const/4 v14, 0x5

    goto :goto_8

    .line 582
    :cond_10
    const/16 v19, 0x1f4

    move/from16 v0, v19

    if-ne v7, v0, :cond_11

    .line 584
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Internal server error"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 585
    const/16 v14, 0xd

    goto/16 :goto_2

    .line 587
    :cond_11
    const/16 v19, 0x1c3

    move/from16 v0, v19

    if-ne v7, v0, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/exchange/EasSyncService;->getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 589
    invoke-virtual/range {p0 .. p2}, Lcom/android/exchange/EasSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_f .. :try_end_f} :catch_1

    move-result-object v19

    .line 629
    :try_start_10
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_10} :catch_3

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 592
    :cond_12
    :try_start_11
    const-string v19, "Validation failed, reporting I/O error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_11 .. :try_end_11} :catch_1

    .line 593
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 614
    .end local v7           #code:I
    .local v9, e:Lcom/android/exchange/CommandStatusException;
    .restart local v12       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .restart local v16       #status:I
    :cond_13
    const/16 v14, 0x8

    goto/16 :goto_4

    .line 615
    :cond_14
    :try_start_12
    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->getUnsupportedPolicies()[Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_5

    .line 618
    .end local v12           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :cond_15
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 619
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Denied access: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 620
    const/16 v14, 0xe

    goto/16 :goto_6

    .line 621
    :cond_16
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 622
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Transient error: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 623
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 625
    :cond_17
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Unexpected response: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 626
    const/4 v14, 0x0

    goto/16 :goto_6
.end method
