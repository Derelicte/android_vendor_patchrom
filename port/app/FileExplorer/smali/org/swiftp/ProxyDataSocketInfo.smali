.class public Lorg/swiftp/ProxyDataSocketInfo;
.super Ljava/net/Socket;
.source "ProxyDataSocketInfo.java"


# instance fields
.field private remotePublicPort:I

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 0
    .parameter "socket"
    .parameter "remotePublicPort"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 37
    iput p2, p0, Lorg/swiftp/ProxyDataSocketInfo;->remotePublicPort:I

    .line 38
    iput-object p1, p0, Lorg/swiftp/ProxyDataSocketInfo;->socket:Ljava/net/Socket;

    .line 39
    return-void
.end method


# virtual methods
.method public getRemotePublicPort()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/swiftp/ProxyDataSocketInfo;->remotePublicPort:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketInfo;->socket:Ljava/net/Socket;

    return-object v0
.end method
