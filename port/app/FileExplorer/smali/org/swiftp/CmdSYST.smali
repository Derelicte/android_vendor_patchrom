.class public Lorg/swiftp/CmdSYST;
.super Lorg/swiftp/FtpCmd;
.source "CmdSYST.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const-class v0, Lorg/swiftp/CmdSYST;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 35
    iget-object v0, p0, Lorg/swiftp/CmdSYST;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "SYST executing"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 36
    iget-object v0, p0, Lorg/swiftp/CmdSYST;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v1, "215 UNIX Type: L8\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lorg/swiftp/CmdSYST;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "SYST finished"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 38
    return-void
.end method
