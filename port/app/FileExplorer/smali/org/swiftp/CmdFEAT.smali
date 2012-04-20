.class public Lorg/swiftp/CmdFEAT;
.super Lorg/swiftp/FtpCmd;
.source "CmdFEAT.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const-class v0, Lorg/swiftp/CmdFEAT;

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
    .line 33
    iget-object v0, p0, Lorg/swiftp/CmdFEAT;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v1, "211-Features supported\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/swiftp/CmdFEAT;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v1, " UTF8\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lorg/swiftp/CmdFEAT;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v1, "211 End\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lorg/swiftp/CmdFEAT;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    const-string v2, "Gave FEAT response"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 37
    return-void
.end method
