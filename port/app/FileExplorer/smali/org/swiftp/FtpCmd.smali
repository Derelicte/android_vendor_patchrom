.class public abstract Lorg/swiftp/FtpCmd;
.super Ljava/lang/Object;
.source "FtpCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static staticLog:Lorg/swiftp/MyLog;


# instance fields
.field protected myLog:Lorg/swiftp/MyLog;

.field protected sessionThread:Lorg/swiftp/SessionThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lorg/swiftp/MyLog;

    const-class v1, Lorg/swiftp/FtpCmd;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/swiftp/FtpCmd;->staticLog:Lorg/swiftp/MyLog;

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter "sessionThread"
    .parameter "logName"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 95
    new-instance v0, Lorg/swiftp/MyLog;

    invoke-direct {v0, p2}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    .line 96
    return-void
.end method

.method protected static dispatchCommand(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 102
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "502 Command not recognized\r\n"

    .line 104
    if-nez v0, :cond_0

    .line 106
    const-string v0, "502 Command parse error\r\n"

    .line 107
    sget-object v1, Lorg/swiftp/FtpCmd;->staticLog:Lorg/swiftp/MyLog;

    invoke-virtual {v1, v3, v0}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 108
    invoke-virtual {p0, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 111
    :cond_0
    array-length v2, v0

    if-ge v2, v4, :cond_1

    .line 112
    sget-object v0, Lorg/swiftp/FtpCmd;->staticLog:Lorg/swiftp/MyLog;

    const-string v2, "No strings parsed"

    invoke-virtual {v0, v3, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 113
    invoke-virtual {p0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_2

    .line 118
    sget-object v0, Lorg/swiftp/FtpCmd;->staticLog:Lorg/swiftp/MyLog;

    const-string v2, "Invalid command verb"

    invoke-virtual {v0, v3, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 119
    invoke-virtual {p0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0, p0, p1}, Lorg/swiftp/FtpCmd;->getCmd(Ljava/lang/String;Lorg/swiftp/SessionThread;Ljava/lang/String;)Lorg/swiftp/FtpCmd;

    move-result-object v2

    .line 127
    if-nez v2, :cond_3

    .line 129
    sget-object v2, Lorg/swiftp/FtpCmd;->staticLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unrecognized FTP verb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 130
    invoke-virtual {p0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/swiftp/CmdUSER;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/swiftp/CmdPASS;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/swiftp/CmdUSER;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    :cond_4
    invoke-virtual {v2}, Lorg/swiftp/FtpCmd;->run()V

    goto :goto_0

    .line 140
    :cond_5
    const-string v0, "530 Login first with USER and PASS\r\n"

    invoke-virtual {p0, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getCmd(Ljava/lang/String;Lorg/swiftp/SessionThread;Ljava/lang/String;)Lorg/swiftp/FtpCmd;
    .locals 1
    .parameter "cmd"
    .parameter "sessionThread"
    .parameter "input"

    .prologue
    .line 34
    const-string v0, "SYST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lorg/swiftp/CmdSYST;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdSYST;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v0, "USER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lorg/swiftp/CmdUSER;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdUSER;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    const-string v0, "PASS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    new-instance v0, Lorg/swiftp/CmdPASS;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdPASS;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    new-instance v0, Lorg/swiftp/CmdTYPE;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdTYPE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    const-string v0, "CWD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    new-instance v0, Lorg/swiftp/CmdCWD;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdCWD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_4
    const-string v0, "PWD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    new-instance v0, Lorg/swiftp/CmdPWD;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdPWD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_5
    const-string v0, "LIST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    new-instance v0, Lorg/swiftp/CmdLIST;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdLIST;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_6
    const-string v0, "PASV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    new-instance v0, Lorg/swiftp/CmdPASV;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdPASV;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_7
    const-string v0, "RETR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51
    new-instance v0, Lorg/swiftp/CmdRETR;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdRETR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_8
    const-string v0, "NLST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 53
    new-instance v0, Lorg/swiftp/CmdNLST;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdNLST;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_9
    const-string v0, "NOOP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55
    new-instance v0, Lorg/swiftp/CmdNOOP;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdNOOP;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_a
    const-string v0, "STOR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    new-instance v0, Lorg/swiftp/CmdSTOR;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdSTOR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_b
    const-string v0, "DELE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59
    new-instance v0, Lorg/swiftp/CmdDELE;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdDELE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_c
    const-string v0, "RNFR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61
    new-instance v0, Lorg/swiftp/CmdRNFR;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdRNFR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_d
    const-string v0, "RNTO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    new-instance v0, Lorg/swiftp/CmdRNTO;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdRNTO;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_e
    const-string v0, "RMD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 65
    new-instance v0, Lorg/swiftp/CmdRMD;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdRMD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_f
    const-string v0, "MKD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 67
    new-instance v0, Lorg/swiftp/CmdMKD;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdMKD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_10
    const-string v0, "OPTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    new-instance v0, Lorg/swiftp/CmdOPTS;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdOPTS;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :cond_11
    const-string v0, "PORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 71
    new-instance v0, Lorg/swiftp/CmdPORT;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdPORT;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_12
    const-string v0, "QUIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    new-instance v0, Lorg/swiftp/CmdQUIT;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdQUIT;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_13
    const-string v0, "FEAT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 75
    new-instance v0, Lorg/swiftp/CmdFEAT;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdFEAT;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_14
    const-string v0, "SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    new-instance v0, Lorg/swiftp/CmdSIZE;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdSIZE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_15
    const-string v0, "CDUP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 79
    new-instance v0, Lorg/swiftp/CmdCDUP;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdCDUP;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :cond_16
    const-string v0, "APPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 81
    new-instance v0, Lorg/swiftp/CmdAPPE;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdAPPE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_17
    const-string v0, "XCUP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 83
    new-instance v0, Lorg/swiftp/CmdCDUP;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdCDUP;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_18
    const-string v0, "XPWD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 85
    new-instance v0, Lorg/swiftp/CmdPWD;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdPWD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_19
    const-string v0, "XMKD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 87
    new-instance v0, Lorg/swiftp/CmdMKD;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdMKD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_1a
    const-string v0, "XRMD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 89
    new-instance v0, Lorg/swiftp/CmdRMD;

    invoke-direct {v0, p1, p2}, Lorg/swiftp/CmdRMD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParameter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "input"
    .parameter "silent"

    .prologue
    .line 153
    if-nez p0, :cond_1

    .line 154
    const-string v1, ""

    .line 169
    :cond_0
    :goto_0
    return-object v1

    .line 156
    :cond_1
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 157
    .local v0, firstSpacePosition:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 158
    const-string v1, ""

    goto :goto_0

    .line 160
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, retString:Ljava/lang/String;
    const-string v2, "\\s+$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    if-nez p1, :cond_0

    .line 167
    sget-object v2, Lorg/swiftp/FtpCmd;->staticLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "existingPrefix"
    .parameter "param"

    .prologue
    .line 181
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 183
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    move-result-object v0

    .line 184
    .local v0, chroot:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0           #chroot:Ljava/io/File;
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v1

    .line 189
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract run()V
.end method

.method public violatesChroot(Ljava/io/File;)Z
    .locals 9
    .parameter "file"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x4

    .line 193
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    move-result-object v1

    .line 195
    .local v1, chroot:Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, canonicalPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    iget-object v4, p0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    const/4 v5, 0x4

    const-string v6, "Path violated folder restriction, denying"

    invoke-virtual {v4, v5, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 198
    iget-object v4, p0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 199
    iget-object v4, p0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chroot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0           #canonicalPath:Ljava/lang/String;
    :goto_0
    return v3

    .line 202
    .restart local v0       #canonicalPath:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 203
    .end local v0           #canonicalPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path canonicalization problem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 205
    iget-object v4, p0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "When checking file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0
.end method
