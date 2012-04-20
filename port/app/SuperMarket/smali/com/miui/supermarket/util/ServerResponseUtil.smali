.class public Lcom/miui/supermarket/util/ServerResponseUtil;
.super Ljava/lang/Object;
.source "ServerResponseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/util/ServerResponseUtil$1;,
        Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static code2Res(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)I
    .locals 3
    .parameter "resp"

    .prologue
    .line 88
    const v0, 0x7f060066

    .line 89
    .local v0, resId:I
    sget-object v1, Lcom/miui/supermarket/util/ServerResponseUtil$1;->$SwitchMap$com$miui$supermarket$util$ServerResponseUtil$ServerResponseCode:[I

    invoke-virtual {p0}, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 135
    const v0, 0x7f060066

    .line 138
    :goto_0
    return v0

    .line 91
    :pswitch_0
    const v0, 0x7f06005d

    .line 92
    goto :goto_0

    .line 95
    :pswitch_1
    const v0, 0x7f06005e

    .line 96
    goto :goto_0

    .line 99
    :pswitch_2
    const v0, 0x7f06005f

    .line 100
    goto :goto_0

    .line 103
    :pswitch_3
    const v0, 0x7f060060

    .line 104
    goto :goto_0

    .line 107
    :pswitch_4
    const v0, 0x7f060061

    .line 108
    goto :goto_0

    .line 111
    :pswitch_5
    const v0, 0x7f060062

    .line 112
    goto :goto_0

    .line 115
    :pswitch_6
    const v0, 0x7f060063

    .line 116
    goto :goto_0

    .line 119
    :pswitch_7
    const v0, 0x7f060064

    .line 120
    goto :goto_0

    .line 123
    :pswitch_8
    const v0, 0x7f060065

    .line 124
    goto :goto_0

    .line 127
    :pswitch_9
    const v0, 0x7f060067

    .line 128
    goto :goto_0

    .line 131
    :pswitch_a
    const v0, 0x7f060068

    .line 132
    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static exception2Code(Ljava/lang/Exception;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 3
    .parameter "e"

    .prologue
    .line 63
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->GENERAL_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 64
    .local v0, respCode:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    instance-of v1, p0, Lorg/json/JSONException;

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "ServerResponseUtil"

    const-string v2, "JSONException: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->IVALID_RESPONSE_DATA:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 84
    :goto_0
    return-object v0

    .line 67
    :cond_0
    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "ServerResponseUtil"

    const-string v2, "ConnectTimeOutException: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->CONNECTION_TIME_OUT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 70
    :cond_1
    instance-of v1, p0, Ljava/net/ConnectException;

    if-eqz v1, :cond_2

    .line 71
    const-string v1, "ServerResponseUtil"

    const-string v2, "ConnectException: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->CONNECTION_EXCEPTION:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 73
    :cond_2
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_3

    .line 74
    const-string v1, "ServerResponseUtil"

    const-string v2, "SocketTimeoutException: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->CONNECTION_TIME_OUT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 76
    :cond_3
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_4

    .line 77
    const-string v1, "ServerResponseUtil"

    const-string v2, "IOException: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->SERVER_IO_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 80
    :cond_4
    const-string v1, "ServerResponseUtil"

    const-string v2, "ConnectTimeOutException: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->GENERAL_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0
.end method

.method public static str2Code(Ljava/lang/String;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 4
    .parameter "error"

    .prologue
    .line 35
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->GENERAL_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 36
    .local v0, respCode:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    const-string v1, "ServerResponseUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-nez p0, :cond_0

    .line 38
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->IVALID_RESPONSE_DATA:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 59
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "OK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "BadAuthentication"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->BAD_AUTH:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 43
    :cond_2
    const-string v1, "AppNotExist"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->APP_NOT_EXIST:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 45
    :cond_3
    const-string v1, "InvalidArgument"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->INVALID_ARGUMENT:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 47
    :cond_4
    const-string v1, "InternalServerError"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->INTERNAL_SERVER_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 49
    :cond_5
    const-string v1, "AccountNotExist"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->ACCOUNT_NOT_EXIST:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 51
    :cond_6
    const-string v1, "Unbound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 52
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->UNBOUND_USERID:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 53
    :cond_7
    const-string v1, "Expired"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 54
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->TOKEN_EXPIRED:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0

    .line 56
    :cond_8
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->GENERAL_ERROR:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_0
.end method
