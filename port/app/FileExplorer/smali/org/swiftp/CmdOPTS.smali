.class public Lorg/swiftp/CmdOPTS;
.super Lorg/swiftp/FtpCmd;
.source "CmdOPTS.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const-class v0, Lorg/swiftp/CmdOPTS;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lorg/swiftp/CmdOPTS;->input:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 33
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->input:Ljava/lang/String;

    invoke-static {v5}, Lorg/swiftp/CmdOPTS;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, param:Ljava/lang/String;
    const/4 v0, 0x0

    .line 37
    .local v0, errString:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 38
    const-string v0, "550 Need argument to OPTS\r\n"

    .line 39
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Couldn\'t understand empty OPTS command"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->w(Ljava/lang/String;)V

    .line 66
    :goto_0
    if-eqz v0, :cond_4

    .line 67
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Template log message"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 73
    :goto_1
    return-void

    .line 42
    :cond_0
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, splits:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 44
    const-string v0, "550 Malformed OPTS command\r\n"

    .line 45
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Couldn\'t parse OPTS command"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, optName:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, optVal:Ljava/lang/String;
    const-string v5, "UTF8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    const-string v5, "ON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Got OPTS UTF8 ON"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 55
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Lorg/swiftp/SessionThread;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Ignoring OPTS UTF8 for something besides ON"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized OPTS option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 62
    const-string v0, "502 Unrecognized option\r\n"

    .line 63
    goto :goto_0

    .line 70
    .end local v1           #optName:Ljava/lang/String;
    .end local v2           #optVal:Ljava/lang/String;
    .end local v4           #splits:[Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v6, "200 OPTS accepted\r\n"

    invoke-virtual {v5, v6}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lorg/swiftp/CmdOPTS;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Handled OPTS ok"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
