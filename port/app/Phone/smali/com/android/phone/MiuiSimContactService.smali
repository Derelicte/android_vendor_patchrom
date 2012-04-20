.class public Lcom/android/phone/MiuiSimContactService;
.super Landroid/app/Service;
.source "MiuiSimContactService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiSimContactService$SimContactsThread;,
        Lcom/android/phone/MiuiSimContactService$MyBinder;,
        Lcom/android/phone/MiuiSimContactService$ProgressListener;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mBinder:Lcom/android/phone/MiuiSimContactService$MyBinder;

.field private mCanceled:Z

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBackground:Z

.field private mIsTaskRunning:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

.field private mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Lcom/android/phone/MiuiSimContactService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiSimContactService$MyBinder;-><init>(Lcom/android/phone/MiuiSimContactService;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mBinder:Lcom/android/phone/MiuiSimContactService$MyBinder;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiSimContactService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiSimContactService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/phone/MiuiSimContactService;->mCanceled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/MiuiSimContactService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiSimContactService;Lmiui/provider/BatchOperation;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiSimContactService;->buildInsertOperations(Lmiui/provider/BatchOperation;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiSimContactService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/phone/MiuiSimContactService;->mTotalCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiSimContactService;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiSimContactService;->deleteOneSimContact(Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/MiuiSimContactService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/phone/MiuiSimContactService;->mIsTaskRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/MiuiSimContactService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/phone/MiuiSimContactService;->mIsBackground:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/MiuiSimContactService;IIZZ)Landroid/app/Notification;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/MiuiSimContactService;->constructNotification(IIZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private buildInsertOperations(Lmiui/provider/BatchOperation;Landroid/content/ContentValues;)V
    .locals 16
    .parameter "ops"
    .parameter "values"

    .prologue
    .line 198
    invoke-virtual/range {p1 .. p1}, Lmiui/provider/BatchOperation;->size()I

    move-result v13

    .line 199
    .local v13, rawContactIdIndex:I
    new-instance v9, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    sget-object v14, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 201
    .local v9, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    iget-object v10, v9, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 202
    .local v10, phoneName:Ljava/lang/String;
    iget v12, v9, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 203
    .local v12, phoneType:I
    sget-object v14, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 204
    .local v11, phoneNumber:Ljava/lang/String;
    sget-object v14, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, emailAddresses:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 208
    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, emailAddressArray:[Ljava/lang/String;
    :goto_0
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 215
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v8, 0x0

    .line 216
    .local v8, myGroupsId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/MiuiSimContactService;->mAccount:Landroid/accounts/Account;

    if-eqz v14, :cond_1

    .line 217
    const-string v14, "account_name"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MiuiSimContactService;->mAccount:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 218
    const-string v14, "account_type"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MiuiSimContactService;->mAccount:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 222
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 224
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 225
    const-string v14, "raw_contact_id"

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 226
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 227
    const-string v14, "data1"

    invoke-virtual {v2, v14, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 228
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 230
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 231
    const-string v14, "raw_contact_id"

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 232
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 233
    const-string v14, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 234
    const-string v14, "data1"

    invoke-virtual {v2, v14, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 235
    const-string v14, "is_primary"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 236
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 238
    if-eqz v5, :cond_2

    .line 239
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v3, v1, v6

    .line 240
    .local v3, emailAddress:Ljava/lang/String;
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 241
    const-string v14, "raw_contact_id"

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 242
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 243
    const-string v14, "data2"

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 244
    const-string v14, "data1"

    invoke-virtual {v2, v14, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 245
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 239
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 210
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v4           #emailAddressArray:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #myGroupsId:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #emailAddressArray:[Ljava/lang/String;
    goto/16 :goto_0

    .line 220
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v8       #myGroupsId:Ljava/lang/String;
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 249
    :cond_2
    if-eqz v8, :cond_3

    .line 250
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 251
    const-string v14, "raw_contact_id"

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 252
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 253
    const-string v14, "group_sourceid"

    invoke-virtual {v2, v14, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 254
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 256
    :cond_3
    return-void
.end method

.method private constructNotification(IIZZ)Landroid/app/Notification;
    .locals 4
    .parameter "messageId"
    .parameter "iconId"
    .parameter "autoCancel"
    .parameter "onGoing"

    .prologue
    const/4 v3, 0x0

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MiuiSimContacts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiSimContactService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private deleteOneSimContact(Landroid/content/ContentValues;)I
    .locals 8
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 191
    .local v0, adnUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, name:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, number:Ljava/lang/String;
    const-string v4, "tag=\'%s\' AND number=\'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContactService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mBinder:Lcom/android/phone/MiuiSimContactService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContactService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;

    .line 67
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 76
    if-nez p1, :cond_0

    move v1, v2

    .line 97
    :goto_0
    return v1

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mAccount:Landroid/accounts/Account;

    .line 83
    const-string v1, "android.intent.extra.TITLE"

    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MiuiSimContactService;->mTotalCount:I

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    .line 86
    goto :goto_0

    .line 89
    :cond_2
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    sget-object v1, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    iput-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    .line 94
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/phone/MiuiSimContactService$SimContactsThread;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiSimContactService$SimContactsThread;-><init>(Lcom/android/phone/MiuiSimContactService;)V

    invoke-virtual {v1}, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->start()V

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/MiuiSimContactService;->mCanceled:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/phone/MiuiSimContactService;->mIsTaskRunning:Z

    move v1, v3

    .line 97
    goto :goto_0

    .line 91
    :cond_4
    const-string v1, "android.intent.action.DELETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    sget-object v1, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    iput-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    goto :goto_1
.end method

.method public setProgressListener(Lcom/android/phone/MiuiSimContactService$ProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;

    .line 71
    return-void
.end method

.method public stopTask()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContactService;->mCanceled:Z

    .line 102
    return-void
.end method

.method public switchToBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 112
    iget-boolean v1, p0, Lcom/android/phone/MiuiSimContactService;->mIsTaskRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    sget-object v2, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne v1, v2, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, notification:Landroid/app/Notification;
    const v1, 0x7f0c0308

    const v2, 0x7f02003d

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/phone/MiuiSimContactService;->constructNotification(IIZZ)Landroid/app/Notification;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;

    const/16 v2, 0x271a

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    .end local v0           #notification:Landroid/app/Notification;
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/MiuiSimContactService;->mIsBackground:Z

    .line 119
    return-void
.end method

.method public switchToForeground()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContactService;->mIsBackground:Z

    .line 108
    return-void
.end method
