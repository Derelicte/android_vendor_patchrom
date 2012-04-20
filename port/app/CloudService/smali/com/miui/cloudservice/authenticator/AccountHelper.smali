.class public Lcom/miui/cloudservice/authenticator/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/authenticator/AccountHelper$MySslParameters;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResponse:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private handleError(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "error"

    .prologue
    .line 111
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, ""

    .line 120
    :goto_0
    return-object v1

    .line 114
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/miui/cloudservice/authenticator/Constants;->errorCodes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 115
    sget-object v1, Lcom/miui/cloudservice/authenticator/Constants;->errorCodes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/miui/cloudservice/authenticator/Constants;->errorIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "params"

    .prologue
    const v6, 0x7f070018

    .line 149
    :try_start_0
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/cloudservice/authenticator/SysUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f070018

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->makeRequest(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)V

    .line 153
    const/4 v1, 0x0

    .local v1, error:Ljava/lang/String;
    const/4 v3, 0x0

    .line 154
    .local v3, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mResponse:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 156
    :try_start_1
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mResponse:Lorg/json/JSONObject;

    const-string v5, "error"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mResponse:Lorg/json/JSONObject;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 162
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f070017

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .end local v1           #error:Ljava/lang/String;
    .end local v3           #message:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v3

    .line 158
    .restart local v1       #error:Ljava/lang/String;
    .restart local v3       #message:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "XMAccountHelper"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 169
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #error:Ljava/lang/String;
    .end local v3           #message:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 170
    .local v2, ioe:Ljava/io/IOException;
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 165
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v1       #error:Ljava/lang/String;
    .restart local v3       #message:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    invoke-direct {p0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->handleError(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public bindEmail(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 193
    const-string v0, "https://user.api.miui.com/api?r=mobile/bindem"

    invoke-direct {p0, v0, p1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindNickname(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 197
    const-string v0, "https://user.api.miui.com/api?r=mobile/setnick"

    invoke-direct {p0, v0, p1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindPhone(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 189
    const-string v0, "https://user.api.miui.com/api?r=mobile/bindph"

    invoke-direct {p0, v0, p1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkNickname(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 140
    const-string v0, "https://user.api.miui.com/api?r=mobile/checknick"

    invoke-direct {p0, v0, p1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createAccByPhone(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 136
    const-string v0, "https://user.api.miui.com/api?r=mobile/regbyph"

    invoke-direct {p0, v0, p1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Lcom/miui/cloudservice/authenticator/Parameter;
    .locals 5

    .prologue
    .line 175
    new-instance v2, Lcom/miui/cloudservice/authenticator/Parameter;

    invoke-direct {v2}, Lcom/miui/cloudservice/authenticator/Parameter;-><init>()V

    .line 176
    .local v2, params:Lcom/miui/cloudservice/authenticator/Parameter;
    const-string v3, "mv"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, lauguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, country:Ljava/lang/String;
    const-string v3, "la"

    invoke-virtual {v2, v3, v1}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 180
    const-string v3, "co"

    invoke-virtual {v2, v3, v0}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 181
    return-object v2
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getVerifyCode(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 132
    const-string v0, "https://user.api.miui.com/api?r=mobile/getvkey"

    invoke-direct {p0, v0, p1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 124
    const-string v0, "https://user.api.miui.com/api?r=mobile/login"

    invoke-direct {p0, v0, p1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeRequest(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)V
    .locals 14
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v3, 0x0

    .line 61
    .local v3, conn:Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    const-string v12, "BKS"

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 62
    .local v11, trusted:Ljava/security/KeyStore;
    iget-object v12, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f05

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 65
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    const-string v12, "miuirom"

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 70
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v10

    .line 71
    .local v10, tmf:Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v10, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 72
    new-instance v9, Lcom/miui/cloudservice/authenticator/AccountHelper$MySslParameters;

    invoke-virtual {v10}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/miui/cloudservice/authenticator/AccountHelper$MySslParameters;-><init>([Ljavax/net/ssl/TrustManager;)V

    .line 74
    .local v9, sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v7, req:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    .line 76
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 77
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;

    invoke-direct {v12, v9}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 78
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 79
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 80
    const-string v12, "POST"

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 81
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 82
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 85
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 86
    .local v6, out:Ljava/io/OutputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/miui/cloudservice/authenticator/Parameter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V

    .line 87
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 89
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 90
    .local v2, code:I
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_0

    .line 92
    const/4 v5, 0x0

    .line 93
    .local v5, line:Ljava/lang/String;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v13, 0x400

    invoke-direct {v1, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 94
    .local v1, br:Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v8, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 96
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 100
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v12

    .line 105
    .end local v5           #line:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 108
    .end local v2           #code:I
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v7           #req:Ljava/net/URL;
    .end local v9           #sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .end local v10           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v11           #trusted:Ljava/security/KeyStore;
    :cond_1
    :goto_2
    return-void

    .line 67
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v11       #trusted:Ljava/security/KeyStore;
    :catchall_0
    move-exception v12

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 103
    .end local v4           #in:Ljava/io/InputStream;
    .end local v11           #trusted:Ljava/security/KeyStore;
    :catch_1
    move-exception v12

    .line 105
    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_2

    .line 98
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #code:I
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v7       #req:Ljava/net/URL;
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    .restart local v9       #sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .restart local v10       #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .restart local v11       #trusted:Ljava/security/KeyStore;
    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/miui/cloudservice/authenticator/AccountHelper;->mResponse:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 105
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #code:I
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v7           #req:Ljava/net/URL;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    .end local v9           #sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .end local v10           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v11           #trusted:Ljava/security/KeyStore;
    :catchall_1
    move-exception v12

    if-eqz v3, :cond_3

    .line 106
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    throw v12
.end method

.method public viewCard(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 185
    const-string v0, "https://user.api.miui.com/api?r=mobile/card"

    invoke-direct {p0, v0, p1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->request(Ljava/lang/String;Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
