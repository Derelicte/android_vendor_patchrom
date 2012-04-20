.class public Lcom/android/email/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# static fields
.field private static final sServerMailboxNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;)V
    .locals 21
    .parameter "context"
    .parameter "localMessage"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 193
    .local v14, localAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, contentType:Ljava/lang/String;
    const-string v2, "name"

    invoke-static {v10, v2}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, name:Ljava/lang/String;
    if-nez v15, :cond_0

    .line 196
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, contentDisposition:Ljava/lang/String;
    const-string v2, "filename"

    invoke-static {v9, v2}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 201
    .end local v9           #contentDisposition:Ljava/lang/String;
    :cond_0
    const-wide/16 v19, 0x0

    .line 202
    .local v19, size:J
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v13

    .line 203
    .local v13, disposition:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 204
    const-string v2, "size"

    invoke-static {v13, v2}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 205
    .local v18, s:Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 206
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 212
    .end local v18           #s:Ljava/lang/String;
    :cond_1
    const-string v2, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, partIds:[Ljava/lang/String;
    if-eqz v17, :cond_6

    const/4 v2, 0x0

    aget-object v16, v17, v2

    .line 215
    .local v16, partId:Ljava/lang/String;
    :goto_0
    iput-object v15, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 216
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 217
    move-wide/from16 v0, v19

    iput-wide v0, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 218
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 219
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 221
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 222
    const-string v2, "B"

    iput-object v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 234
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 235
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 237
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 239
    .local v8, attachmentFoundInDb:Z
    :cond_2
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    new-instance v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 241
    .local v12, dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v12, v11}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 244
    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 247
    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 249
    const/4 v8, 0x1

    .line 250
    iget-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iput-wide v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .end local v12           #dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 261
    if-nez v8, :cond_4

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 266
    :cond_4
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14, v4, v5}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 268
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 271
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 273
    return-void

    .line 213
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #attachmentFoundInDb:Z
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #partId:Ljava/lang/String;
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 257
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v8       #attachmentFoundInDb:Z
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v16       #partId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mp"
    .parameter "contentType"
    .parameter "quotedPartTag"
    .parameter "partText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
    if-nez p3, :cond_0

    .line 435
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/android/emailcommon/internet/TextBody;

    invoke-direct {v0, p3}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, body:Lcom/android/emailcommon/internet/TextBody;
    new-instance v1, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1, v0, p1}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 431
    .local v1, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    if-eqz p2, :cond_1

    .line 432
    const-string v2, "X-Android-Body-Quoted-Part"

    invoke-virtual {v1, v2, p2}, Lcom/android/emailcommon/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    goto :goto_0
.end method

.method public static declared-synchronized inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "mailboxName"

    .prologue
    const/4 v2, 0x1

    .line 442
    const-class v3, Lcom/android/email/LegacyConversions;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 444
    sget-object v4, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v5, 0x7f080036

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v4, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v5, 0x7f080037

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v4, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v5, 0x7f080038

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v4, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v5, 0x7f080039

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v4, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v5, 0x7f08003a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v4, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v5, 0x7f08003b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 471
    :cond_1
    :goto_0
    monitor-exit v3

    return v2

    .line 466
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, lowerCaseName:Ljava/lang/String;
    sget-object v4, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 468
    .local v1, type:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 442
    .end local v0           #lowerCaseName:Ljava/lang/String;
    .end local v1           #type:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;
    .locals 13
    .parameter "context"
    .parameter "localMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 330
    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 333
    .local v3, message:Lcom/android/emailcommon/internet/MimeMessage;
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_0
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 334
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 335
    .local v0, from:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v0

    if-lez v7, :cond_0

    .line 336
    aget-object v7, v0, v9

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFrom(Lcom/android/emailcommon/mail/Address;)V

    .line 338
    :cond_0
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 339
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 340
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v11, 0x3

    if-ne v7, v11, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v3, v10, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 342
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 343
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 345
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 346
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 347
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 348
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setReplyTo([Lcom/android/emailcommon/mail/Address;)V

    .line 349
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    .line 350
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 353
    const-string v7, "Content-Type"

    const-string v10, "multipart/mixed"

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v4, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 355
    .local v4, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v7, "mixed"

    invoke-virtual {v4, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 359
    :try_start_0
    const-string v7, "text/html"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_2
    :try_start_1
    const-string v7, "text/plain"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :goto_3
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    move v2, v8

    .line 373
    .local v2, isReply:Z
    :goto_4
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    move v1, v8

    .line 378
    .local v1, isForward:Z
    :goto_5
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 380
    :cond_1
    :try_start_2
    const-string v7, "text/plain"

    const-string v8, "quoted-intro"

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 386
    :goto_6
    if-eqz v2, :cond_7

    const-string v5, "quoted-reply"

    .line 388
    .local v5, replyTag:Ljava/lang/String;
    :goto_7
    :try_start_3
    const-string v7, "text/html"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 395
    :goto_8
    :try_start_4
    const-string v7, "text/plain"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 413
    .end local v5           #replyTag:Ljava/lang/String;
    :cond_2
    :goto_9
    return-object v3

    .line 333
    .end local v0           #from:[Lcom/android/emailcommon/mail/Address;
    .end local v1           #isForward:Z
    .end local v2           #isReply:Z
    .end local v4           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_3
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0       #from:[Lcom/android/emailcommon/mail/Address;
    :cond_4
    move v7, v9

    .line 340
    goto/16 :goto_1

    .line 361
    .restart local v4       #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :catch_0
    move-exception v6

    .line 362
    .local v6, rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while reading html body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 368
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 369
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while reading text body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_5
    move v2, v9

    .line 372
    goto :goto_4

    .restart local v2       #isReply:Z
    :cond_6
    move v1, v9

    .line 373
    goto :goto_5

    .line 382
    .restart local v1       #isForward:Z
    :catch_2
    move-exception v6

    .line 383
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 386
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_7
    const-string v5, "quoted-forward"

    goto :goto_7

    .line 390
    .restart local v5       #replyTag:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 391
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading html reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 397
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v6

    .line 398
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public static saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V
    .locals 17
    .parameter "context"
    .parameter "part"
    .parameter "localAttachment"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 292
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 294
    .local v3, attachmentId:J
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 296
    .local v9, in:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v12

    .line 297
    .local v12, saveIn:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 298
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 300
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v11

    .line 302
    .local v11, saveAs:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 303
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 304
    .local v10, out:Ljava/io/FileOutputStream;
    invoke-static {v9, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v14

    int-to-long v6, v14

    .line 305
    .local v6, copySize:J
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 306
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 309
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, contentUriString:Ljava/lang/String;
    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 313
    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 316
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v8, cv:Landroid/content/ContentValues;
    const-string v14, "size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    const-string v14, "contentUri"

    invoke-virtual {v8, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 320
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v8, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    .end local v3           #attachmentId:J
    .end local v5           #contentUriString:Ljava/lang/String;
    .end local v6           #copySize:J
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .end local v11           #saveAs:Ljava/io/File;
    .end local v12           #saveIn:Ljava/io/File;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method static stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 280
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    if-nez p0, :cond_2

    const-string p0, ""

    .line 282
    :cond_2
    if-nez p1, :cond_3

    const-string p1, ""

    .line 283
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 165
    .local v0, attachmentPart:Lcom/android/emailcommon/mail/Part;
    invoke-static {p0, p1, v0}, Lcom/android/email/LegacyConversions;->addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;)V

    goto :goto_0

    .line 167
    .end local v0           #attachmentPart:Lcom/android/emailcommon/mail/Part;
    :cond_0
    return-void
.end method

.method public static updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z
    .locals 11
    .parameter "localMessage"
    .parameter "message"
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 81
    .local v2, from:[Lcom/android/emailcommon/mail/Address;
    sget-object v9, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    .line 82
    .local v8, to:[Lcom/android/emailcommon/mail/Address;
    sget-object v9, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 83
    .local v1, cc:[Lcom/android/emailcommon/mail/Address;
    sget-object v9, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 84
    .local v0, bcc:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    .line 85
    .local v5, replyTo:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, subject:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    .line 87
    .local v6, sentDate:Ljava/util/Date;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v3

    .line 89
    .local v3, internalDate:Ljava/util/Date;
    if-eqz v2, :cond_0

    array-length v9, v2

    if-lez v9, :cond_0

    .line 90
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 92
    :cond_0
    if-eqz v6, :cond_1

    .line 93
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 95
    :cond_1
    if-eqz v7, :cond_2

    .line 96
    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 98
    :cond_2
    sget-object v9, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v9}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 99
    sget-object v9, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v9}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 100
    iget v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v10, 0x4

    or-int/2addr v9, v10

    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 105
    :cond_3
    iget v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    .line 106
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    if-eqz v9, :cond_4

    const-string v9, ""

    iget-object v10, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 107
    :cond_4
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 112
    :cond_5
    :goto_0
    sget-object v9, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v9}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 116
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 117
    if-eqz v3, :cond_6

    .line 118
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 124
    :cond_6
    check-cast p1, Lcom/android/emailcommon/internet/MimeMessage;

    .end local p1
    invoke-virtual {p1}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, messageId:Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 126
    iput-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 130
    :cond_7
    iput-wide p4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 131
    iput-wide p2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 133
    if-eqz v2, :cond_8

    array-length v9, v2

    if-lez v9, :cond_8

    .line 134
    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 137
    :cond_8
    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 138
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 139
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 140
    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 150
    const/4 v9, 0x1

    return v9

    .line 109
    .end local v4           #messageId:Ljava/lang/String;
    .restart local p1
    :cond_9
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto :goto_0
.end method
