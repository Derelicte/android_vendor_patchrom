.class public Lcom/android/mms/ui/SingleRecipientConversationActivity;
.super Lcom/android/mms/ui/ConversationBase;
.source "SingleRecipientConversationActivity.java"


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCallView:Landroid/widget/ImageView;

.field private mFetionPrefix:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mMessageCount:Landroid/widget/TextView;

.field private mPhoneLocation:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SingleRecipientConversationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->dialRecipient()V

    return-void
.end method

.method private static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private coverByMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"

    .prologue
    const/4 v8, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 145
    .local v5, size:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 147
    .local v3, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v0, dest:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200cd

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    .local v1, mask:Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    invoke-static {p1, v5, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 151
    .local v4, scaledBitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 156
    .local v2, maskPaint:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 157
    invoke-virtual {v0, v1, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    return-object v3
.end method

.method private dialRecipient()V
    .locals 8

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->isRecipientCallable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 265
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    const-string v2, "vnd.android.cursor.item/phone_v2"

    .line 267
    .local v2, mimeType:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getContactMethodId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 269
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, dialIntent:Landroid/content/Intent;
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 278
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #dialIntent:Landroid/content/Intent;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local v0       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, number:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .restart local v1       #dialIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private isRecipientCallable()Z
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 284
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadContactPhoto(J)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "photoId"

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 165
    const/4 v8, 0x0

    .line 167
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data15"

    aput-object v4, v2, v3

    const-string v3, "_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 172
    if-eqz v8, :cond_2

    .line 173
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 175
    .local v9, id:Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 176
    .local v7, bytes:[B
    if-eqz v7, :cond_0

    .line 178
    const/4 v0, 0x0

    :try_start_1
    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 189
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 190
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bytes:[B
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #id:Ljava/lang/Long;
    :cond_1
    :goto_1
    return-object v6

    .line 189
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2
    if-eqz v8, :cond_3

    .line 190
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3020046

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 189
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 190
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 181
    .restart local v7       #bytes:[B
    .restart local v9       #id:Ljava/lang/Long;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadSPPhoto(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "address"

    .prologue
    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    const/4 v8, 0x0

    .line 202
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "addr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "photo"

    aput-object v4, v2, v3

    const-string v3, "addr = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    if-eqz v8, :cond_2

    .line 208
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, number:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 211
    .local v7, bytes:[B
    if-eqz v7, :cond_0

    .line 213
    const/4 v0, 0x0

    :try_start_1
    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 224
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bytes:[B
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #number:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v6

    .line 224
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2
    if-eqz v8, :cond_3

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3020049

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 224
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 216
    .restart local v7       #bytes:[B
    .restart local v9       #number:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUpContactInfo(Lcom/android/mms/data/Contact;)V
    .locals 10
    .parameter "contact"

    .prologue
    const v9, 0x302004a

    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, phone:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getPhotoId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->loadContactPhoto(J)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 118
    .local v3, photo:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->coverByMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    invoke-static {p0, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, location:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 123
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFetionPrefix:Landroid/view/View;

    invoke-static {v2}, Lcom/android/mms/util/AddressUtils;->isFetionNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    return-void

    .line 106
    .end local v0           #location:Ljava/lang/String;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->loadSPPhoto(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3       #photo:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 109
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3       #photo:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 114
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3       #photo:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 126
    .restart local v0       #location:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 130
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    if-eqz v0, :cond_5

    .line 132
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_4
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 134
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    move v4, v5

    .line 139
    goto :goto_3
.end method


# virtual methods
.method protected getContentViewResId()I
    .locals 1

    .prologue
    .line 290
    const v0, 0x7f040049

    return v0
.end method

.method protected initMessageList()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/mms/ui/ConversationBase;->initMessageList()V

    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;-><init>(Lcom/android/mms/ui/SingleRecipientConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 260
    return-void
.end method

.method protected initResourceRefs()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/mms/ui/ConversationBase;->initResourceRefs()V

    .line 236
    const v0, 0x7f100013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 237
    const v0, 0x7f100015

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFromView:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMessageCount:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mPhoneLocation:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mCallView:Landroid/widget/ImageView;

    .line 241
    const v0, 0x7f100014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mFetionPrefix:Landroid/view/View;

    .line 242
    return-void
.end method

.method protected initialize(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->initialize(J)V

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mCallView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mCallView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/SingleRecipientConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SingleRecipientConversationActivity$1;-><init>(Lcom/android/mms/ui/SingleRecipientConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mCallView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startMsgListQuery()V
    .locals 10

    .prologue
    const/16 v4, 0x2537

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 297
    .local v3, conversationUri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 326
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v9, 0x0

    .line 303
    .local v9, number:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 307
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 312
    :cond_1
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    const-string v0, "SingleRecipientCA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->cancelOperation(I)V

    .line 320
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v8

    .line 324
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    .line 304
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected updateMessageCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMessageCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method protected updateTitle(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 89
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 90
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SingleRecipientConversationActivity;->setUpContactInfo(Lcom/android/mms/data/Contact;)V

    .line 91
    return-void
.end method
