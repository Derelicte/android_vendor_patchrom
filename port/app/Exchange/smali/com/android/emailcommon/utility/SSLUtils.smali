.class public Lcom/android/emailcommon/utility/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/SSLUtils$1;,
        Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;
    }
.end annotation


# static fields
.field private static sInsecureFactory:Landroid/net/SSLCertificateSocketFactory;

.field private static sSecureFactory:Landroid/net/SSLCertificateSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public static escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v4, 0x2b

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2d

    if-eq v3, v0, :cond_0

    const/16 v3, 0x2e

    if-ne v3, v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    if-ne v4, v0, :cond_2

    .line 104
    const-string v3, "++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 110
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getHttpSocketFactory(ZLjavax/net/ssl/KeyManager;)Lcom/android/emailcommon/utility/SSLSocketFactory;
    .locals 4
    .parameter "insecure"
    .parameter "keyManager"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v0

    .line 74
    .local v0, underlying:Landroid/net/SSLCertificateSocketFactory;
    if-eqz p1, :cond_0

    .line 75
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->setKeyManagers([Ljavax/net/ssl/KeyManager;)V

    .line 77
    :cond_0
    new-instance v1, Lcom/android/emailcommon/utility/SSLSocketFactory;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 78
    .local v1, wrapped:Lcom/android/emailcommon/utility/SSLSocketFactory;
    if-eqz p0, :cond_1

    .line 79
    sget-object v2, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 81
    :cond_1
    return-object v1
.end method

.method public static declared-synchronized getSSLSocketFactory(Z)Landroid/net/SSLCertificateSocketFactory;
    .locals 3
    .parameter "insecure"

    .prologue
    .line 53
    const-class v1, Lcom/android/emailcommon/utility/SSLUtils;

    monitor-enter v1

    if-eqz p0, :cond_1

    .line 54
    :try_start_0
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sInsecureFactory:Landroid/net/SSLCertificateSocketFactory;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    sput-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sInsecureFactory:Landroid/net/SSLCertificateSocketFactory;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sInsecureFactory:Landroid/net/SSLCertificateSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit v1

    return-object v0

    .line 60
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;

    if-nez v0, :cond_2

    .line 61
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    sput-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;

    .line 64
    :cond_2
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
