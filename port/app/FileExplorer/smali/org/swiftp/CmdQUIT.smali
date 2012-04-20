.class public Lorg/swiftp/CmdQUIT;
.super Lorg/swiftp/FtpCmd;
.source "CmdQUIT.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const-class v0, Lorg/swiftp/CmdQUIT;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lorg/swiftp/CmdQUIT;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    const-string v2, "QUITting"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 33
    iget-object v0, p0, Lorg/swiftp/CmdQUIT;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v1, "221 Goodbye\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/swiftp/CmdQUIT;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 35
    return-void
.end method
