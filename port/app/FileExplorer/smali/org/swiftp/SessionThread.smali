.class public Lorg/swiftp/SessionThread;
.super Ljava/lang/Thread;
.source "SessionThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftp/SessionThread$Source;
    }
.end annotation


# static fields
.field public static MAX_AUTH_FAILS:I

.field static numNulls:I


# instance fields
.field protected account:Lorg/swiftp/Account;

.field authFails:I

.field protected authenticated:Z

.field protected binaryMode:Z

.field protected buffer:Ljava/nio/ByteBuffer;

.field protected cmdSocket:Ljava/net/Socket;

.field dataOutputStream:Ljava/io/OutputStream;

.field protected dataSocket:Ljava/net/Socket;

.field protected dataSocketFactory:Lorg/swiftp/DataSocketFactory;

.field protected encoding:Ljava/lang/String;

.field protected myLog:Lorg/swiftp/MyLog;

.field protected pasvMode:Z

.field protected renameFrom:Ljava/io/File;

.field private sendWelcomeBanner:Z

.field protected shouldExit:Z

.field protected source:Lorg/swiftp/SessionThread$Source;

.field protected workingDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x3

    sput v0, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    .line 248
    const/4 v0, 0x0

    sput v0, Lorg/swiftp/SessionThread;->numNulls:I

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V
    .locals 4
    .parameter "socket"
    .parameter "dataSocketFactory"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->shouldExit:Z

    .line 41
    new-instance v0, Lorg/swiftp/MyLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    .line 42
    invoke-static {}, Lorg/swiftp/Defaults;->getInputBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/SessionThread;->buffer:Ljava/nio/ByteBuffer;

    .line 44
    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->pasvMode:Z

    .line 45
    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->binaryMode:Z

    .line 46
    new-instance v0, Lorg/swiftp/Account;

    invoke-direct {v0}, Lorg/swiftp/Account;-><init>()V

    iput-object v0, p0, Lorg/swiftp/SessionThread;->account:Lorg/swiftp/Account;

    .line 47
    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->authenticated:Z

    .line 48
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;

    .line 50
    iput-object v3, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 52
    iput-object v3, p0, Lorg/swiftp/SessionThread;->renameFrom:Ljava/io/File;

    .line 56
    iput-object v3, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    .line 58
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 60
    iput v2, p0, Lorg/swiftp/SessionThread;->authFails:I

    .line 344
    iput-object p1, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    .line 345
    iput-object p3, p0, Lorg/swiftp/SessionThread;->source:Lorg/swiftp/SessionThread$Source;

    .line 346
    iput-object p2, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    .line 347
    sget-object v0, Lorg/swiftp/SessionThread$Source;->LOCAL:Lorg/swiftp/SessionThread$Source;

    if-ne p3, v0, :cond_0

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/swiftp/SessionThread;->sendWelcomeBanner:Z

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->sendWelcomeBanner:Z

    goto :goto_0
.end method


# virtual methods
.method public authAttempt(Z)V
    .locals 3
    .parameter "authenticated"

    .prologue
    .line 371
    if-eqz p1, :cond_1

    .line 372
    iget-object v0, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x4

    const-string v2, "Authentication complete"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/swiftp/SessionThread;->authenticated:Z

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->source:Lorg/swiftp/SessionThread$Source;

    sget-object v1, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    if-ne v0, v1, :cond_2

    .line 380
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->quit()V

    .line 385
    :goto_1
    iget v0, p0, Lorg/swiftp/SessionThread;->authFails:I

    sget v1, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    if-le v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Too many auth fails, quitting session"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->quit()V

    goto :goto_0

    .line 382
    :cond_2
    iget v0, p0, Lorg/swiftp/SessionThread;->authFails:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/swiftp/SessionThread;->authFails:I

    .line 383
    iget-object v0, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auth failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/swiftp/SessionThread;->authFails:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/swiftp/SessionThread;->MAX_AUTH_FAILS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public closeDataSocket()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    const-string v2, "Closing data socket"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 228
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :goto_0
    iput-object v3, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 237
    :try_start_1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :cond_1
    :goto_1
    iput-object v3, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 242
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_1

    .line 231
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public closeSocket()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDataSocketPasvIp()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRenameFrom()Ljava/io/File;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/swiftp/SessionThread;->renameFrom:Ljava/io/File;

    return-object v0
.end method

.method public getWorkingDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->authenticated:Z

    return v0
.end method

.method public isBinaryMode()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->binaryMode:Z

    return v0
.end method

.method public onPasv()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    invoke-virtual {v0}, Lorg/swiftp/DataSocketFactory;->onPasv()I

    move-result v0

    return v0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .locals 1
    .parameter "dest"
    .parameter "port"

    .prologue
    .line 180
    iget-object v0, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    invoke-virtual {v0, p1, p2}, Lorg/swiftp/DataSocketFactory;->onPort(Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "SessionThread told to quit"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 224
    return-void
.end method

.method public receiveFromDataSocket([B)I
    .locals 8
    .parameter "buf"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, -0x2

    const/4 v7, 0x4

    .line 137
    iget-object v5, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    if-nez v5, :cond_0

    .line 138
    iget-object v3, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "Can\'t receive from null dataSocket"

    invoke-virtual {v3, v7, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 162
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v5, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 142
    iget-object v3, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "Can\'t receive from unconnected socket"

    invoke-virtual {v3, v7, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    :try_start_0
    iget-object v5, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 150
    .local v2, in:Ljava/io/InputStream;
    :cond_2
    const/4 v5, 0x0

    array-length v6, p1

    invoke-virtual {v2, p1, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, bytesRead:I
    if-eqz v0, :cond_2

    .line 152
    if-ne v0, v3, :cond_3

    move v0, v3

    .line 155
    goto :goto_0

    .line 157
    .end local v0           #bytesRead:I
    .end local v2           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Ljava/io/IOException;
    iget-object v3, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "Error reading data socket"

    invoke-virtual {v3, v7, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    move v0, v4

    .line 159
    goto :goto_0

    .line 161
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bytesRead:I
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_3
    iget-object v3, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 250
    iget-object v3, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "SessionThread started"

    invoke-virtual {v3, v7, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 252
    iget-boolean v3, p0, Lorg/swiftp/SessionThread;->sendWelcomeBanner:Z

    if-eqz v3, :cond_0

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "220 SwiFTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/swiftp/Util;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ready\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 257
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 261
    .local v1, in:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 263
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/fileexplorer/FTPServerService;->writeMonitor(ZLjava/lang/String;)V

    .line 264
    iget-object v3, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received line from client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 265
    invoke-static {p0, v2}, Lorg/swiftp/FtpCmd;->dispatchCommand(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "Connection was dropped"

    invoke-virtual {v3, v7, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 274
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 275
    return-void

    .line 267
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "readLine gave null, quitting"

    invoke-virtual {v3, v4}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public sendViaDataSocket(Ljava/lang/String;)Z
    .locals 5
    .parameter "string"

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    .local v0, bytes:[B
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using data connection encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 85
    array-length v2, v0

    invoke-virtual {p0, v0, v2}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 88
    .end local v0           #bytes:[B
    :goto_0
    return v2

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x6

    const-string v4, "Unsupported encoding for data socket send"

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 88
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendViaDataSocket([BI)Z
    .locals 1
    .parameter "bytes"
    .parameter "len"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    move-result v0

    return v0
.end method

.method public sendViaDataSocket([BII)Z
    .locals 5
    .parameter "bytes"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 105
    iget-object v3, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    if-nez v3, :cond_0

    .line 106
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "Can\'t send via null dataOutputStream"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 120
    :goto_0
    return v1

    .line 109
    :cond_0
    if-nez p3, :cond_1

    move v1, v2

    .line 110
    goto :goto_0

    .line 113
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iget-object v1, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    int-to-long v3, p3

    invoke-virtual {v1, v3, v4}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V

    move v1, v2

    .line 120
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "Couldn\'t write output stream for data socket"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 116
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setBinaryMode(Z)V
    .locals 0
    .parameter "binaryMode"

    .prologue
    .line 363
    iput-boolean p1, p0, Lorg/swiftp/SessionThread;->binaryMode:Z

    .line 364
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 437
    iput-object p1, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setRenameFrom(Ljava/io/File;)V
    .locals 0
    .parameter "renameFrom"

    .prologue
    .line 429
    iput-object p1, p0, Lorg/swiftp/SessionThread;->renameFrom:Ljava/io/File;

    .line 430
    return-void
.end method

.method public setWorkingDir(Ljava/io/File;)V
    .locals 4
    .parameter "workingDir"

    .prologue
    .line 399
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/SessionThread;->workingDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x4

    const-string v3, "SessionThread canonical error"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public startUsingDataSocket()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 205
    :try_start_0
    iget-object v2, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    invoke-virtual {v2}, Lorg/swiftp/DataSocketFactory;->onTransfer()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    .line 206
    iget-object v2, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    if-nez v2, :cond_0

    .line 207
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x4

    const-string v4, "dataSocketFactory.onTransfer() returned null"

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 217
    :goto_0
    return v1

    .line 211
    :cond_0
    iget-object v2, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/swiftp/SessionThread;->dataOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v1, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "IOException getting OutputStream for data socket"

    invoke-virtual {v2, v5, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/swiftp/SessionThread;->dataSocket:Ljava/net/Socket;

    goto :goto_0
.end method

.method public writeBytes([B)V
    .locals 5
    .parameter "bytes"

    .prologue
    .line 302
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/swiftp/SessionThread;->cmdSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    sget v3, Lorg/swiftp/Defaults;->dataChunkSize:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 304
    .local v1, out:Ljava/io/BufferedOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 305
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 306
    iget-object v2, p0, Lorg/swiftp/SessionThread;->dataSocketFactory:Lorg/swiftp/DataSocketFactory;

    array-length v3, p1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/DataSocketFactory;->reportTraffic(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v1           #out:Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x4

    const-string v4, "Exception writing socket"

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 315
    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/android/fileexplorer/FTPServerService;->writeMonitor(ZLjava/lang/String;)V

    .line 318
    :try_start_0
    iget-object v2, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 323
    .local v1, strBytes:[B
    :goto_0
    invoke-virtual {p0, v1}, Lorg/swiftp/SessionThread;->writeBytes([B)V

    .line 324
    return-void

    .line 319
    .end local v1           #strBytes:[B
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lorg/swiftp/SessionThread;->myLog:Lorg/swiftp/MyLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/swiftp/SessionThread;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/swiftp/MyLog;->e(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1       #strBytes:[B
    goto :goto_0
.end method
