.class public abstract Lorg/swiftp/DataSocketFactory;
.super Ljava/lang/Object;
.source "DataSocketFactory.java"


# instance fields
.field protected myLog:Lorg/swiftp/MyLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/swiftp/MyLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/DataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    return-void
.end method


# virtual methods
.method public abstract onPasv()I
.end method

.method public abstract onPort(Ljava/net/InetAddress;I)Z
.end method

.method public abstract onTransfer()Ljava/net/Socket;
.end method

.method public abstract reportTraffic(J)V
.end method
