.class Lcom/android/exchange/EasOutboxService$SendMailEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailEntity"
.end annotation


# static fields
.field private static final MODE_TAGS:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileLength:J

.field private final mFileStream:Ljava/io/FileInputStream;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mSendTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x45t 0x5t 0x0t 0x0t
        0x47t 0x5t 0x0t 0x0t
        0x46t 0x5t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter "context"
    .parameter "instream"
    .parameter "length"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 103
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 104
    iput-object p1, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    .line 106
    iput-wide p3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    .line 107
    iput p5, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    .line 108
    iput-object p6, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 109
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I

    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 5

    .prologue
    .line 117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v1, v3

    .line 127
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 132
    :goto_0
    return-wide v1

    .line 126
    :catchall_0
    move-exception v1

    .line 127
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    :goto_1
    throw v1

    .line 123
    :catch_0
    move-exception v1

    .line 127
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 132
    :goto_2
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/EasOutboxService$SendMailEntity;->writeTo(Ljava/io/OutputStream;Z)V

    .line 138
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Z)V
    .locals 6
    .parameter "outstream"
    .parameter "withData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Output stream may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1, p1}, Lcom/android/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .local v1, s:Lcom/android/exchange/adapter/Serializer;
    iget v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 159
    const/16 v2, 0x551

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendMail-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 161
    const/16 v2, 0x548

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 164
    iget v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mSendTag:I

    const/16 v3, 0x545

    if-eq v2, v3, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    #calls: Lcom/android/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    invoke-static {v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->access$000(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v0

    .line 166
    .local v0, info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    if-eqz v0, :cond_1

    .line 167
    const/16 v2, 0x54b

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 170
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 171
    const/16 v2, 0x54e

    iget-object v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 176
    :goto_0
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 181
    .end local v0           #info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_1
    const/16 v2, 0x550

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 183
    if-eqz p2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileStream:Ljava/io/FileInputStream;

    iget-wide v3, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->opaque(Ljava/io/InputStream;I)Lcom/android/exchange/adapter/Serializer;

    .line 189
    :goto_1
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 190
    return-void

    .line 173
    .restart local v0       #info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_2
    const/16 v2, 0x54d

    iget-object v3, v0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 174
    const/16 v2, 0x54c

    iget-object v3, v0, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 186
    .end local v0           #info:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_3
    iget-wide v2, p0, Lcom/android/exchange/EasOutboxService$SendMailEntity;->mFileLength:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->opaqueWithoutData(I)Lcom/android/exchange/adapter/Serializer;

    goto :goto_1
.end method
