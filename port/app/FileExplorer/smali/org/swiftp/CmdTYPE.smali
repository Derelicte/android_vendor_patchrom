.class public Lorg/swiftp/CmdTYPE;
.super Lorg/swiftp/FtpCmd;
.source "CmdTYPE.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const-class v0, Lorg/swiftp/CmdTYPE;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lorg/swiftp/CmdTYPE;->input:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 34
    iget-object v2, p0, Lorg/swiftp/CmdTYPE;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "TYPE executing"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 35
    iget-object v2, p0, Lorg/swiftp/CmdTYPE;->input:Ljava/lang/String;

    invoke-static {v2}, Lorg/swiftp/CmdTYPE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, param:Ljava/lang/String;
    const-string v2, "I"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "L 8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    const-string v0, "200 Binary type set\r\n"

    .line 38
    .local v0, output:Ljava/lang/String;
    iget-object v2, p0, Lorg/swiftp/CmdTYPE;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/swiftp/SessionThread;->setBinaryMode(Z)V

    .line 45
    :goto_0
    iget-object v2, p0, Lorg/swiftp/CmdTYPE;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v2, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lorg/swiftp/CmdTYPE;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "TYPE complete"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 47
    return-void

    .line 39
    .end local v0           #output:Ljava/lang/String;
    :cond_1
    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "A N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    :cond_2
    const-string v0, "200 ASCII type set\r\n"

    .line 41
    .restart local v0       #output:Ljava/lang/String;
    iget-object v2, p0, Lorg/swiftp/CmdTYPE;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/swiftp/SessionThread;->setBinaryMode(Z)V

    goto :goto_0

    .line 43
    .end local v0           #output:Ljava/lang/String;
    :cond_3
    const-string v0, "503 Malformed TYPE command\r\n"

    .restart local v0       #output:Ljava/lang/String;
    goto :goto_0
.end method
