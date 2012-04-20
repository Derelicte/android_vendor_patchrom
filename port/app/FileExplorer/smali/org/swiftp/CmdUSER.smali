.class public Lorg/swiftp/CmdUSER;
.super Lorg/swiftp/FtpCmd;
.source "CmdUSER.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const-class v0, Lorg/swiftp/CmdUSER;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lorg/swiftp/CmdUSER;->input:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    iget-object v1, p0, Lorg/swiftp/CmdUSER;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x3

    const-string v3, "USER executing"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 35
    iget-object v1, p0, Lorg/swiftp/CmdUSER;->input:Ljava/lang/String;

    invoke-static {v1}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, username:Ljava/lang/String;
    const-string v1, "[A-Za-z0-9]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lorg/swiftp/CmdUSER;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v2, "530 Invalid username\r\n"

    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lorg/swiftp/CmdUSER;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v2, "331 Send password\r\n"

    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lorg/swiftp/CmdUSER;->sessionThread:Lorg/swiftp/SessionThread;

    iget-object v1, v1, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    invoke-virtual {v1, v0}, Lorg/swiftp/Account;->setUsername(Ljava/lang/String;)V

    goto :goto_0
.end method
