.class public Lorg/swiftp/CmdPORT;
.super Lorg/swiftp/FtpCmd;
.source "CmdPORT.java"

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
    .line 32
    const-class v0, Lorg/swiftp/CmdPORT;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lorg/swiftp/CmdPORT;->input:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v12, 0x4

    .line 37
    iget-object v9, p0, Lorg/swiftp/CmdPORT;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "PORT running"

    invoke-virtual {v9, v11, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, errString:Ljava/lang/String;
    iget-object v9, p0, Lorg/swiftp/CmdPORT;->input:Ljava/lang/String;

    invoke-static {v9}, Lorg/swiftp/CmdPORT;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, param:Ljava/lang/String;
    const-string v9, "|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "::"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 42
    const-string v1, "550 No IPv6 support, reconfigure your client\r\n"

    .line 89
    :goto_0
    if-nez v1, :cond_7

    .line 90
    iget-object v9, p0, Lorg/swiftp/CmdPORT;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v10, "200 PORT OK\r\n"

    invoke-virtual {v9, v10}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v9, p0, Lorg/swiftp/CmdPORT;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "PORT completed"

    invoke-virtual {v9, v11, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 96
    :goto_1
    return-void

    .line 45
    :cond_0
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, substrs:[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x6

    if-eq v9, v10, :cond_1

    .line 47
    const-string v1, "550 Malformed PORT argument\r\n"

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v9, v8

    if-ge v2, v9, :cond_4

    .line 52
    aget-object v9, v8, v2

    const-string v10, "[0-9]+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v9, v8, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_3

    .line 55
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "550 Invalid PORT argument: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    goto :goto_0

    .line 50
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 60
    :cond_4
    new-array v5, v12, [B

    .line 61
    .local v5, ipBytes:[B
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_6

    .line 65
    :try_start_0
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 66
    .local v4, ipByteAsInt:I
    const/16 v9, 0x80

    if-lt v4, v9, :cond_5

    .line 67
    add-int/lit16 v4, v4, -0x100

    .line 69
    :cond_5
    int-to-byte v9, v4

    aput-byte v9, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 70
    .end local v4           #ipByteAsInt:I
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "550 Invalid PORT format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    goto/16 :goto_0

    .line 78
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_1
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 84
    .local v3, inetAddr:Ljava/net/InetAddress;
    aget-object v9, v8, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0x100

    const/4 v10, 0x5

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int v7, v9, v10

    .line 87
    .local v7, port:I
    iget-object v9, p0, Lorg/swiftp/CmdPORT;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v9, v3, v7}, Lorg/swiftp/SessionThread;->onPort(Ljava/net/InetAddress;I)Z

    goto/16 :goto_0

    .line 79
    .end local v3           #inetAddr:Ljava/net/InetAddress;
    .end local v7           #port:I
    :catch_1
    move-exception v0

    .line 80
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "550 Unknown host\r\n"

    .line 81
    goto/16 :goto_0

    .line 93
    .end local v0           #e:Ljava/net/UnknownHostException;
    .end local v2           #i:I
    .end local v5           #ipBytes:[B
    .end local v8           #substrs:[Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lorg/swiftp/CmdPORT;->myLog:Lorg/swiftp/MyLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PORT error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 94
    iget-object v9, p0, Lorg/swiftp/CmdPORT;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v9, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
