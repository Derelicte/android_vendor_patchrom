.class public Lorg/swiftp/CmdPASS;
.super Lorg/swiftp/FtpCmd;
.source "CmdPASS.java"

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
    .line 33
    const-class v0, Lorg/swiftp/CmdPASS;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lorg/swiftp/CmdPASS;->input:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lorg/swiftp/CmdPASS;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    const-string v2, "Executing PASS"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/swiftp/CmdPASS;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v1, "230 Access granted\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lorg/swiftp/CmdPASS;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->authAttempt(Z)V

    .line 81
    return-void
.end method
