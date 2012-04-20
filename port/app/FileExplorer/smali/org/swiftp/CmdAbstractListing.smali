.class public abstract Lorg/swiftp/CmdAbstractListing;
.super Lorg/swiftp/FtpCmd;
.source "CmdAbstractListing.java"


# static fields
.field protected static staticLog:Lorg/swiftp/MyLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/swiftp/MyLog;

    const-class v1, Lorg/swiftp/CmdLIST;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/swiftp/CmdAbstractListing;->staticLog:Lorg/swiftp/MyLog;

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    const-class v0, Lorg/swiftp/CmdAbstractListing;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .parameter "response"
    .parameter "dir"

    .prologue
    const/4 v9, 0x3

    .line 48
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    const-string v6, "500 Internal error, listDirectory on non-directory\r\n"

    .line 65
    :goto_0
    return-object v6

    .line 51
    :cond_0
    iget-object v6, p0, Lorg/swiftp/CmdAbstractListing;->myLog:Lorg/swiftp/MyLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Listing directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 55
    .local v2, entries:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 56
    const-string v6, "500 Couldn\'t list directory. Check config and mount status.\r\n"

    goto :goto_0

    .line 58
    :cond_1
    iget-object v6, p0, Lorg/swiftp/CmdAbstractListing;->myLog:Lorg/swiftp/MyLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dir len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 59
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 60
    .local v3, entry:Ljava/io/File;
    invoke-virtual {p0, v3}, Lorg/swiftp/CmdAbstractListing;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, curLine:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    .end local v1           #curLine:Ljava/lang/String;
    .end local v3           #entry:Ljava/io/File;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method abstract makeLsString(Ljava/io/File;)Ljava/lang/String;
.end method

.method protected sendListing(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "listing"

    .prologue
    const/4 v4, 0x3

    .line 72
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "LIST/NLST done making socket"

    invoke-virtual {v1, v4, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 78
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "BINARY"

    .line 79
    .local v0, mode:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->sessionThread:Lorg/swiftp/SessionThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "150 Opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode data connection for file list\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "Sent code 150, sending listing string now"

    invoke-virtual {v1, v4, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 82
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1, p1}, Lorg/swiftp/SessionThread;->sendViaDataSocket(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "sendViaDataSocket failure"

    invoke-virtual {v1, v4, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 84
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 85
    const-string v1, "426 Data socket or network error\r\n"

    .line 90
    .end local v0           #mode:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 76
    const-string v1, "425 Error opening data socket\r\n"

    goto :goto_1

    .line 78
    :cond_1
    const-string v0, "ASCII"

    goto :goto_0

    .line 87
    .restart local v0       #mode:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 88
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "Listing sendViaDataSocket success"

    invoke-virtual {v1, v4, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 89
    iget-object v1, p0, Lorg/swiftp/CmdAbstractListing;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v2, "226 Data transmission OK\r\n"

    invoke-virtual {v1, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    goto :goto_1
.end method
