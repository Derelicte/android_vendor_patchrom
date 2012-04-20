.class Lcom/android/email/mail/store/ImapFolder;
.super Lcom/android/emailcommon/mail/Folder;
.source "ImapFolder.java"


# static fields
.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;


# instance fields
.field private mConnection:Lcom/android/email/mail/store/ImapConnection;

.field private mExists:Z

.field mHash:[Ljava/lang/Object;

.field mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mMessageCount:I

.field private mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field private final mName:Ljava/lang/String;

.field private final mStore:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/ImapFolder;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-void
.end method

.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1
    .parameter "store"
    .parameter "name"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    .line 81
    iput-object p1, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    .line 82
    iput-object p2, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1110
    :cond_0
    return-void
.end method

.method private decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;
    .locals 9
    .parameter "in"
    .parameter "contentTransferEncoding"
    .parameter "size"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 685
    new-instance v5, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v5}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 686
    .local v5, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v5}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 688
    .local v4, out:Ljava/io/OutputStream;
    const/16 v7, 0x4000

    :try_start_0
    new-array v1, v7, [B

    .line 689
    .local v1, buffer:[B
    const/4 v3, 0x0

    .line 690
    .local v3, n:I
    const/4 v2, 0x0

    .line 691
    .local v2, count:I
    :cond_0
    :goto_0
    const/4 v7, -0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v7, v3, :cond_1

    .line 692
    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 693
    add-int/2addr v2, v3

    .line 694
    if-eqz p4, :cond_0

    .line 695
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, p3

    invoke-interface {p4, v7}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v3           #n:I
    :catch_0
    move-exception v0

    .line 699
    .local v0, bde:Landroid/util/Base64DataException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/email/Email;->getMessageDecodeErrorString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, warning:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 704
    .end local v0           #bde:Landroid/util/Base64DataException;
    .end local v6           #warning:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 702
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v3       #n:I
    :cond_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v3           #n:I
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v7
.end method

.method private destroyResponses()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 89
    :cond_0
    return-void
.end method

.method private doSelect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x1

    .line 1077
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v1, "SELECT \"%s\""

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v5, v5, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1082
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    .line 1084
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1085
    const-string v4, "EXISTS"

    invoke-virtual {v0, v6, v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1086
    invoke-virtual {v0, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v1

    move v0, v1

    :goto_1
    move v1, v0

    .line 1095
    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1088
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    .line 1089
    const-string v4, "READ-ONLY"

    invoke-virtual {v0, v4}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1090
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    :cond_1
    :goto_2
    move v0, v1

    .line 1094
    goto :goto_1

    .line 1091
    :cond_2
    const-string v4, "READ-WRITE"

    invoke-virtual {v0, v4}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_2

    .line 1094
    :cond_3
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1095
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open mailbox: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    :cond_4
    if-ne v1, v2, :cond_5

    .line 1100
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Did not find message count during select"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_5
    iput v1, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    .line 1103
    iput-boolean v6, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z

    .line 1104
    return-void

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 727
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    .line 730
    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 718
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_0

    .line 720
    .end local v1           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_0
    return-void
.end method

.method private ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1113
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1114
    const-string v0, "Email"

    const-string v1, "IO Exception detected: "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapConnection;->close()V

    .line 1117
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-ne p1, v0, :cond_1

    .line 1118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 1119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    .line 1121
    :cond_1
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "IO Error"

    invoke-direct {v0, v1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected static isAsciiString(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 422
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 423
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 424
    .local v0, c:C
    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    const/4 v3, 0x0

    .line 426
    .end local v0           #c:C
    :goto_1
    return v3

    .line 422
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v0           #c:C
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    .locals 24
    .parameter "bs"
    .parameter "part"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 734
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 738
    new-instance v16, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 739
    .local v16, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .local v11, count:I
    :goto_0
    if-ge v14, v11, :cond_2

    .line 740
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v12

    .line 741
    .local v12, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 746
    new-instance v7, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 747
    .local v7, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    const-string v20, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 748
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v20

    add-int/lit8 v21, v14, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    .line 753
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 739
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 751
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 756
    .end local v7           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_1
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 757
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 762
    .end local v12           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 905
    .end local v16           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :goto_2
    return-void

    .line 779
    .end local v11           #count:I
    .end local v14           #i:I
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v19

    .line 780
    .local v19, type:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v18

    .line 781
    .local v18, subType:Lcom/android/email/mail/store/imap/ImapString;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 784
    .local v15, mimeType:Ljava/lang/String;
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v6

    .line 785
    .local v6, bodyParams:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    .line 786
    .local v8, cid:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v13

    .line 787
    .local v13, encoding:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v17

    .line 789
    .local v17, size:I
    const-string v20, "message/rfc822"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 799
    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    const-string v21, "BODYSTRUCTURE message/rfc822 not yet supported."

    invoke-direct/range {v20 .. v21}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 806
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .local v10, contentType:Ljava/lang/StringBuilder;
    const/4 v14, 0x1

    .restart local v14       #i:I
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .restart local v11       #count:I
    :goto_3
    if-ge v14, v11, :cond_5

    .line 817
    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v6, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    add-int/lit8 v14, v14, 0x2

    goto :goto_3

    .line 822
    :cond_5
    const-string v20, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v20, "TEXT"

    invoke-virtual/range {v19 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 831
    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 836
    .local v3, bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .local v9, contentDisposition:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v20

    if-lez v20, :cond_8

    .line 839
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 841
    .local v4, bodyDisposition0Str:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 842
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    .line 846
    .local v5, bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    .line 851
    const/4 v14, 0x1

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_5
    if-ge v14, v11, :cond_8

    .line 854
    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    add-int/lit8 v14, v14, 0x2

    goto :goto_5

    .line 833
    .end local v3           #bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    .end local v4           #bodyDisposition0Str:Ljava/lang/String;
    .end local v5           #bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    .end local v9           #contentDisposition:Ljava/lang/StringBuilder;
    :cond_7
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .restart local v3       #bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    goto :goto_4

    .line 862
    .restart local v9       #contentDisposition:Ljava/lang/StringBuilder;
    :cond_8
    if-lez v17, :cond_9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "size"

    invoke-static/range {v20 .. v21}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_9

    .line 865
    const-string v20, ";\n size=%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_a

    .line 873
    const-string v20, "Content-Disposition"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_a
    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 882
    const-string v20, "Content-Transfer-Encoding"

    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_b
    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_c

    .line 890
    const-string v20, "Content-ID"

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_c
    if-lez v17, :cond_d

    .line 894
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v20, p1

    .line 895
    check-cast v20, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 902
    :cond_d
    :goto_6
    const-string v20, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 896
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/emailcommon/internet/MimeBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v20, p1

    .line 897
    check-cast v20, Lcom/android/emailcommon/internet/MimeBodyPart;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    goto :goto_6

    .line 899
    :cond_f
    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown part type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v2, 0x0

    .line 914
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 916
    :try_start_0
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_a

    aget-object v5, p1, v3

    .line 918
    new-instance v6, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct {v6}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V

    .line 919
    new-instance v0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    invoke-direct {v0, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 920
    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 921
    invoke-virtual {v0}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 923
    const-string v0, ""

    .line 924
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v7

    .line 925
    array-length v1, v7

    if-lez v1, :cond_3

    .line 926
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    array-length v9, v7

    move v1, v2

    :goto_1
    if-ge v1, v9, :cond_2

    .line 928
    aget-object v10, v7, v1

    .line 929
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_1

    .line 930
    const-string v10, " \\SEEN"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 931
    :cond_1
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_0

    .line 932
    const-string v10, " \\FLAGGED"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 997
    :catch_0
    move-exception v0

    .line 998
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v0

    .line 935
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 936
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    :cond_3
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v7, "APPEND \"%s\" (%s) {%d}"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v11, v11, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    invoke-virtual {v6}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/android/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 949
    new-instance v1, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    iget-object v6, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    iget-object v6, v6, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 951
    invoke-virtual {v5, v1}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 952
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 953
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 954
    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 958
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 966
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    .line 967
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-lt v1, v12, :cond_8

    const/4 v1, 0x0

    const-string v6, "APPENDUID"

    invoke-virtual {v0, v1, v6}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 968
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 970
    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 916
    :cond_6
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 955
    :cond_7
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-nez v1, :cond_5

    .line 956
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_3

    .line 980
    :cond_8
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 981
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 986
    const-string v1, "HEADER MESSAGE-ID %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 987
    array-length v6, v1

    if-lez v6, :cond_9

    .line 988
    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v5, v1}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 992
    :cond_9
    const-string v1, "(HEADER MESSAGE-ID %s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 993
    array-length v1, v0

    if-lez v1, :cond_6

    .line 994
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1000
    :cond_a
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1002
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .locals 2
    .parameter "expunge"

    .prologue
    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 162
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method complexSearchForUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 459
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/email/mail/store/ImapConnection;->executeComplexCommand(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 469
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    :goto_0
    return-object v2

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :try_start_1
    sget-object v2, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    goto :goto_0

    .line 465
    .end local v0           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v1

    .line 466
    .local v1, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 29
    .parameter "messages"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 258
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v23, v0

    const-string v24, "UID COPY %s \"%s\""

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 263
    .local v20, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v12, messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    const/4 v5, 0x0

    .line 265
    .local v5, handledUidPlus:Z
    move-object/from16 v2, p1

    .local v2, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v11, v2, v7

    .line 266
    .local v11, m:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 269
    .end local v11           #m:Lcom/android/emailcommon/mail/Message;
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 271
    .local v18, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->isBad()Z

    move-result v23

    if-nez v23, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->isNo()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 272
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    .line 273
    .local v21, responseText:Ljava/lang/String;
    new-instance v23, Lcom/android/emailcommon/mail/MessagingException;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v2           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v5           #handledUidPlus:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #len$:I
    .end local v12           #messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    .end local v18           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v20           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v21           #responseText:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 330
    .local v9, ioe:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v23

    throw v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .end local v9           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v23

    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v23

    .line 276
    .restart local v2       #arr$:[Lcom/android/emailcommon/mail/Message;
    .restart local v5       #handledUidPlus:Z
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #len$:I
    .restart local v12       #messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    .restart local v18       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v20       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_3
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 281
    if-eqz p3, :cond_1

    .line 284
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 285
    .local v3, copyResponse:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v19

    .line 286
    .local v19, responseCode:Ljava/lang/String;
    const-string v23, "COPYUID"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 287
    const/4 v5, 0x1

    .line 288
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 289
    .local v17, origIdSet:Ljava/lang/String;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v15

    .line 290
    .local v15, newIdSet:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/email/mail/store/imap/ImapUtility;->getImapSequenceValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 291
    .local v16, origIdArray:[Ljava/lang/String;
    invoke-static {v15}, Lcom/android/email/mail/store/imap/ImapUtility;->getImapSequenceValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 293
    .local v14, newIdArray:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 294
    new-instance v23, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Set length mis-match; orig IDs \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\"  new IDs \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 297
    :cond_4
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_1

    .line 298
    aget-object v8, v16, v6

    .line 299
    .local v8, id:Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/mail/Message;

    .line 300
    .restart local v11       #m:Lcom/android/emailcommon/mail/Message;
    if-eqz v11, :cond_5

    .line 301
    aget-object v23, v14, v6

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;->onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V

    .line 297
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 307
    .end local v3           #copyResponse:Lcom/android/email/mail/store/imap/ImapList;
    .end local v6           #i:I
    .end local v8           #id:Ljava/lang/String;
    .end local v11           #m:Lcom/android/emailcommon/mail/Message;
    .end local v14           #newIdArray:[Ljava/lang/String;
    .end local v15           #newIdSet:Ljava/lang/String;
    .end local v16           #origIdArray:[Ljava/lang/String;
    .end local v17           #origIdSet:Ljava/lang/String;
    .end local v18           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v19           #responseCode:Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_9

    if-nez v5, :cond_9

    .line 308
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/email/mail/store/ImapFolder;

    move-object v13, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 311
    .local v13, newFolder:Lcom/android/email/mail/store/ImapFolder;
    :try_start_3
    sget-object v23, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 313
    move-object/from16 v2, p1

    array-length v10, v2

    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v10, :cond_8

    aget-object v11, v2, v7

    .line 314
    .restart local v11       #m:Lcom/android/emailcommon/mail/Message;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HEADER Message-Id \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 315
    .local v22, searchString:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 316
    .restart local v14       #newIdArray:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 317
    const/16 v23, 0x0

    aget-object v23, v14, v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;->onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 313
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 324
    .end local v11           #m:Lcom/android/emailcommon/mail/Message;
    .end local v14           #newIdArray:[Ljava/lang/String;
    .end local v22           #searchString:Ljava/lang/String;
    :cond_8
    const/16 v23, 0x0

    :try_start_4
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    .line 327
    .end local v7           #i$:I
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->doSelect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 332
    .end local v13           #newFolder:Lcom/android/email/mail/store/ImapFolder;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 334
    return-void

    .line 320
    .restart local v13       #newFolder:Lcom/android/email/mail/store/ImapFolder;
    :catch_1
    move-exception v4

    .line 322
    .local v4, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_5
    const-string v23, "Email"

    const-string v24, "Failed to find message"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 324
    const/16 v23, 0x0

    :try_start_6
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    goto :goto_3

    .end local v4           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v23

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    throw v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, connection:Lcom/android/email/mail/store/ImapConnection;
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v5, :cond_1

    .line 229
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapConnection;

    move-result-object v0

    .line 233
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :try_start_1
    const-string v5, "CREATE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 247
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    .line 231
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 239
    :catch_0
    move-exception v2

    .line 246
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 247
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v3, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    .line 242
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 243
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 247
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v4, :cond_3

    .line 248
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_3
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "uid"

    .prologue
    .line 1134
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;)V

    return-object v0
.end method

.method public delete(Z)V
    .locals 2
    .parameter "recurse"

    .prologue
    .line 366
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ImapStore.delete() not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1126
    instance-of v0, p1, Lcom/android/email/mail/store/ImapFolder;

    if-eqz v0, :cond_0

    .line 1127
    check-cast p1, Lcom/android/email/mail/store/ImapFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1129
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 172
    iget-boolean v5, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z

    if-eqz v5, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v3

    .line 180
    :cond_1
    const/4 v0, 0x0

    .line 181
    .local v0, connection:Lcom/android/email/mail/store/ImapConnection;
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v5, :cond_2

    .line 183
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapConnection;

    move-result-object v0

    .line 187
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    const-string v5, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 192
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 207
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    goto :goto_0

    .line 185
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 195
    :catch_0
    move-exception v2

    .line 197
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 198
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 207
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v4, :cond_3

    .line 208
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_3
    throw v3

    .line 206
    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_4
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 207
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v3, :cond_5

    .line 208
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_5
    move v3, v4

    goto :goto_0

    .line 202
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 203
    .local v1, ioe:Ljava/io/IOException;
    :try_start_4
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 1008
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v1, "EXPUNGE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1014
    const/4 v0, 0x0

    return-object v0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1012
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 4
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 511
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->logLastDiscourse()V

    .line 517
    :cond_0
    throw v0
.end method

.method public fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 37
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 523
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 675
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 527
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 528
    .local v25, messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    move-object/from16 v3, p1

    .local v3, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v3

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v23, v3, v19

    .line 529
    .local v23, m:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v23 .. v23}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 543
    .end local v23           #m:Lcom/android/emailcommon/mail/Message;
    :cond_1
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 545
    .local v12, fetchFields:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v31, "UID"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 547
    const-string v31, "FLAGS"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_2
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 550
    const-string v31, "INTERNALDATE"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 551
    const-string v31, "RFC822.SIZE"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 552
    const-string v31, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_3
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 555
    const-string v31, "BODYSTRUCTURE"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_4
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 559
    sget-object v31, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_5
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 562
    const-string v31, "BODY.PEEK[]"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/FetchProfile;->getFirstPart()Lcom/android/emailcommon/mail/Part;

    move-result-object v14

    .line 566
    .local v14, fetchPart:Lcom/android/emailcommon/mail/Part;
    if-eqz v14, :cond_7

    .line 567
    const-string v31, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v31

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 569
    .local v27, partIds:[Ljava/lang/String;
    if-eqz v27, :cond_7

    .line 570
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BODY.PEEK["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v32, v27, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v27           #partIds:[Ljava/lang/String;
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v31, v0

    const-string v32, "UID FETCH %s (%s)"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual {v12}, Ljava/util/LinkedHashSet;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v35

    const/16 v36, 0x20

    invoke-static/range {v35 .. v36}, Lcom/android/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/android/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    const/16 v26, 0x0

    .line 583
    .local v26, messageNumber:I
    :cond_8
    const/16 v28, 0x0

    .line 585
    .local v28, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/email/mail/store/ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v28

    .line 587
    const/16 v31, 0x1

    const-string v32, "FETCH"

    move-object/from16 v0, v28

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v31

    if-nez v31, :cond_9

    .line 669
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 671
    :goto_2
    invoke-virtual/range {v28 .. v28}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v31

    if-eqz v31, :cond_8

    goto/16 :goto_0

    .line 590
    :cond_9
    const/16 v31, 0x2

    :try_start_3
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v13

    .line 591
    .local v13, fetchList:Lcom/android/email/mail/store/imap/ImapList;
    const-string v31, "UID"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v30

    .line 593
    .local v30, uid:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v31

    if-eqz v31, :cond_a

    .line 669
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 672
    .end local v13           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v26           #messageNumber:I
    .end local v28           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v30           #uid:Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 673
    .local v21, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v31

    throw v31

    .line 595
    .end local v21           #ioe:Ljava/io/IOException;
    .restart local v13       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v26       #messageNumber:I
    .restart local v28       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v30       #uid:Ljava/lang/String;
    :cond_a
    :try_start_5
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 596
    .local v24, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    if-nez v24, :cond_b

    .line 669
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 598
    :cond_b
    :try_start_7
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 599
    const-string v31, "FLAGS"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v16

    .line 601
    .local v16, flags:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v18, 0x0

    .local v18, i:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v10

    .local v10, count:I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v10, :cond_10

    .line 602
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v15

    .line 603
    .local v15, flag:Lcom/android/email/mail/store/imap/ImapString;
    const-string v31, "\\DELETED"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 604
    sget-object v31, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 601
    :cond_c
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 605
    :cond_d
    const-string v31, "\\ANSWERED"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 606
    sget-object v31, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 669
    .end local v10           #count:I
    .end local v13           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v15           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v16           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v18           #i:I
    .end local v24           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v30           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v31

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v31
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 607
    .restart local v10       #count:I
    .restart local v13       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v15       #flag:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v16       #flags:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v18       #i:I
    .restart local v24       #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .restart local v30       #uid:Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string v31, "\\SEEN"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 608
    sget-object v31, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_4

    .line 609
    :cond_f
    const-string v31, "\\FLAGGED"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 610
    sget-object v31, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_4

    .line 614
    .end local v10           #count:I
    .end local v15           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v16           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v18           #i:I
    :cond_10
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 615
    const-string v31, "INTERNALDATE"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/email/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v20

    .line 617
    .local v20, internalDate:Ljava/util/Date;
    const-string v31, "RFC822.SIZE"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v29

    .line 619
    .local v29, size:I
    const-string v31, "BODY[HEADER"

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 622
    .local v17, header:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 623
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 624
    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/utility/Utility;->streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 626
    .end local v17           #header:Ljava/lang/String;
    .end local v20           #internalDate:Ljava/util/Date;
    .end local v29           #size:I
    :cond_11
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 627
    const-string v31, "BODYSTRUCTURE"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v7

    .line 629
    .local v7, bs:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v31

    if-nez v31, :cond_12

    .line 631
    :try_start_a
    const-string v31, "TEXT"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-static {v7, v0, v1}, Lcom/android/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1

    .line 640
    .end local v7           #bs:Lcom/android/email/mail/store/imap/ImapList;
    :cond_12
    :goto_5
    :try_start_b
    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_13

    sget-object v31, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 645
    :cond_13
    const-string v31, "BODY[]"

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    .line 646
    .local v4, body:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v6

    .line 647
    .local v6, bodyText:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 648
    .local v5, bodyStream:Ljava/io/InputStream;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 650
    .end local v4           #body:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #bodyStream:Ljava/io/InputStream;
    .end local v6           #bodyText:Ljava/lang/String;
    :cond_14
    if-eqz v14, :cond_15

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v31

    if-lez v31, :cond_15

    .line 651
    const-string v31, "BODY["

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 653
    .restart local v5       #bodyStream:Ljava/io/InputStream;
    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, contentType:Ljava/lang/String;
    const-string v31, "Content-Transfer-Encoding"

    move-object/from16 v0, v31

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v8, v31, v32

    .line 661
    .local v8, contentTransferEncoding:Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v8, v1, v2}, Lcom/android/email/mail/store/ImapFolder;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 665
    .end local v5           #bodyStream:Ljava/io/InputStream;
    .end local v8           #contentTransferEncoding:Ljava/lang/String;
    .end local v9           #contentType:Ljava/lang/String;
    :cond_15
    if-eqz p3, :cond_16

    .line 666
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 669
    :cond_16
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_2

    .line 632
    .restart local v7       #bs:Lcom/android/email/mail/store/imap/ImapList;
    :catch_1
    move-exception v11

    .line 633
    .local v11, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_d
    sget-boolean v31, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v31, :cond_17

    .line 634
    const-string v31, "Email"

    const-string v32, "Error handling message"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    :cond_17
    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_5
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 4
    .parameter "uid"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, uids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 412
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    new-instance v2, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;)V

    .line 416
    :goto_1
    return-object v2

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 477
    if-lt p1, v4, :cond_0

    if-lt p2, v4, :cond_0

    if-ge p2, p1, :cond_1

    .line 478
    :cond_0
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid range: %d %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    const-string v0, "%d:%d NOT DELETED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 6
    .parameter "params"
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 442
    .local v2, filter:Ljava/lang/String;
    const-string v0, "US-ASCII"

    .line 443
    .local v0, charset:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/mail/store/ImapFolder;->isAsciiString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 444
    const-string v0, "UTF-8"

    .line 447
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, octetLength:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID SEARCH CHARSET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (OR TO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (OR CC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (OR SUBJECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BODY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/ImapFolder;->complexSearchForUids(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/android/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    return-object v4
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "uids"
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 488
    if-nez p1, :cond_0

    .line 489
    const-string v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 491
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 5
    .parameter "uids"
    .parameter "listener"

    .prologue
    .line 495
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 497
    aget-object v3, p1, v0

    .line 498
    .local v3, uid:Ljava/lang/String;
    new-instance v1, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;)V

    .line 499
    .local v1, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    if-eqz p2, :cond_0

    .line 501
    invoke-interface {p2, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 496
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v1           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v3           #uid:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lcom/android/email/mail/store/ImapFolder;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v4, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 373
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "SEARCH"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 378
    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    .line 379
    .local v3, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0           #i:I
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v3           #s:Lcom/android/email/mail/store/imap/ImapString;
    :cond_2
    sget-object v5, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUnreadMessageCount()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 345
    const/4 v4, 0x0

    .line 346
    .local v4, unreadMessageCount:I
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v6, "STATUS \"%s\" (UNSEEN)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 350
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 351
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "STATUS"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    const-string v6, "UNSEEN"

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 360
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    return v4

    .line 357
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v1

    .line 358
    .local v1, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v5, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v5
.end method

.method public isOpen()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
    .locals 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapFolder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v2, p1, :cond_1

    .line 100
    :try_start_1
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v3, "NOOP"

    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :try_start_4
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 113
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 114
    :try_start_5
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 115
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    :try_start_6
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->doSelect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 130
    :try_start_7
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_7
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 134
    .local v0, e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 135
    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    .line 136
    throw v0

    .line 106
    .end local v0           #e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_8
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_2

    .line 137
    :catch_2
    move-exception v0

    .line 138
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    iput-boolean v4, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z

    .line 139
    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    .line 140
    throw v0

    .line 110
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_1
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V
    :try_end_9
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 115
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_2

    .line 127
    :catch_3
    move-exception v1

    .line 128
    .restart local v1       #ioe:Ljava/io/IOException;
    :try_start_c
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 130
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_2
    move-exception v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_d
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_2
.end method

.method save(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1060
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->isSaved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1061
    invoke-virtual {v1, p1}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1062
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v0

    .line 1065
    .local v0, hash:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1066
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1067
    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    goto :goto_0
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "searchCriteria"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 392
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID SEARCH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, command:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 401
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .end local v0           #command:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :try_start_1
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImapException in search: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v3, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    goto :goto_0

    .line 397
    .end local v1           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v2

    .line 398
    .local v2, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v3, v2}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v3
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1020
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 1022
    const-string v0, ""

    .line 1023
    array-length v2, p2

    if-lez v2, :cond_6

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    .line 1026
    aget-object v1, p2, v0

    .line 1027
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_1

    .line 1028
    const-string v1, " \\SEEN"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_2

    .line 1030
    const-string v1, " \\DELETED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1031
    :cond_2
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_3

    .line 1032
    const-string v1, " \\FLAGGED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1033
    :cond_3
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_0

    .line 1034
    const-string v1, " \\ANSWERED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1037
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1040
    :goto_2
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v3, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz p3, :cond_5

    const-string v0, "+"

    :goto_3
    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1051
    return-void

    .line 1040
    :cond_5
    :try_start_1
    const-string v0, "-"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    :try_start_2
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1049
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method
