.class Lcom/miui/cloudservice/authenticator/AccountHelper$MySslParameters;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cloudservice/authenticator/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySslParameters"
.end annotation


# direct methods
.method protected constructor <init>([Ljavax/net/ssl/TrustManager;)V
    .locals 6
    .parameter "tms"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v4}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    .line 55
    return-void
.end method
