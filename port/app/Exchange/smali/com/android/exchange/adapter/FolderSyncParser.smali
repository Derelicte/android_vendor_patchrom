.class public Lcom/android/exchange/adapter/FolderSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    }
.end annotation


# static fields
.field private static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

.field private static final UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

.field public static final VALID_EAS_FOLDER_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccountId:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAccountIdAsString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBindArguments:[Ljava/lang/String;

.field private mFixupUninitializedNeeded:Z

.field mInUnitTest:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mInitialSync:Z

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mParentFixupsNeeded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusOnly:Z

.field final mSyncOptionsMap:Ljava/util/HashMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    .line 96
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "serverId"

    aput-object v1, v0, v3

    const-string v1, "parentServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    .line 265
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "serverId"

    aput-object v1, v0, v6

    const-string v1, "syncInterval"

    aput-object v1, v0, v3

    const-string v1, "syncLookback"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 1
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V
    .locals 4
    .parameter "in"
    .parameter "adapter"
    .parameter "statusOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 106
    iput-boolean v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInUnitTest:Z

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    .line 114
    iput-boolean v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 122
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    const-string v1, "parentKey"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    .line 132
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 133
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 134
    iput-boolean p3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    .line 135
    return-void
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/FolderSyncParser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/FolderSyncParser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    return-object v0
.end method

.method private commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p2, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p3, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 509
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Mailbox;

    .line 510
    .local v2, m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {p0, v2, p3}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    iput v3, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 512
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :cond_0
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting unknown type mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 519
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Mailbox;

    .line 520
    .restart local v2       #m:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Adding mailbox: "

    aput-object v6, v5, v4

    iget-object v6, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 521
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    const-string v5, "Applying "

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, " mailbox operations."

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 530
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.email.provider"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 537
    :goto_2
    return v3

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "RemoteException in commitMailboxes"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    move v3, v4

    .line 534
    goto :goto_2

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 536
    .local v0, e:Landroid/content/OperationApplicationException;
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "OperationApplicationException in commitMailboxes"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    move v3, v4

    .line 537
    goto :goto_2
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 213
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 214
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParser()Lcom/android/emailcommon/provider/Mailbox;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 321
    .local v3, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 322
    .local v2, parentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 324
    .local v4, type:I
    :goto_0
    const/16 v7, 0x1cf

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v7

    if-eq v7, v9, :cond_0

    .line 325
    iget v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v7, :pswitch_data_0

    .line 343
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 327
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 328
    goto :goto_0

    .line 331
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 332
    goto :goto_0

    .line 335
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 336
    goto :goto_0

    .line 339
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 340
    goto :goto_0

    .line 347
    :cond_0
    sget-object v7, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 348
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 349
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 350
    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 351
    iget-wide v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iput-wide v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 352
    iput v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 355
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 356
    packed-switch v4, :pswitch_data_1

    .line 390
    :goto_1
    :pswitch_4
    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_1

    move v5, v6

    :cond_1
    iput-boolean v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 392
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 393
    iput-object v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 394
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v5, :cond_2

    .line 395
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_2
    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 403
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_2
    return-object v0

    .line 358
    .restart local v0       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :pswitch_5
    iput v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 359
    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 362
    :pswitch_6
    const/16 v7, 0x42

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 363
    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 369
    :pswitch_7
    const/4 v7, 0x4

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 372
    :pswitch_8
    const/4 v7, 0x5

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 375
    :pswitch_9
    iput v9, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 378
    :pswitch_a
    const/4 v7, 0x6

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 381
    :pswitch_b
    const/16 v7, 0x41

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 382
    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 385
    :pswitch_c
    const/16 v7, 0x45

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_1

    .line 403
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 356
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method

.method public changesParser(Ljava/util/ArrayList;Z)V
    .locals 6
    .parameter
    .parameter "initialSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, addMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/exchange/provider/MailboxUtilities;->startMailboxChanges(Landroid/content/Context;J)V

    .line 549
    :cond_0
    :goto_0
    const/16 v3, 0x1ce

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    .line 550
    iget v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v4, 0x1cf

    if-ne v3, v4, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->addParser()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 552
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    iget v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v4, 0x1d0

    if-ne v3, v4, :cond_2

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/FolderSyncParser;->deleteParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 557
    :cond_2
    iget v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v4, 0x1d1

    if-ne v3, v4, :cond_3

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/FolderSyncParser;->updateParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 559
    :cond_3
    iget v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v4, 0x1d7

    if-ne v3, v4, :cond_4

    .line 560
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    goto :goto_0

    .line 562
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 565
    :cond_5
    new-instance v3, Lcom/android/exchange/adapter/FolderSyncParser$1;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/android/exchange/adapter/FolderSyncParser$1;-><init>(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v2

    .line 643
    .local v2, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-boolean v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInUnitTest:Z

    if-eqz v3, :cond_6

    .line 645
    :try_start_0
    invoke-virtual {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_6
    :goto_1
    return-void

    .line 646
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    return-void
.end method

.method public commit()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 665
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const-string v1, "Sync Issues"

    aput-object v1, v0, v10

    .line 666
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 667
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 670
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 671
    .local v9, parentServerId:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 673
    .local v7, id:J
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 675
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 678
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 680
    if-eqz v9, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    aput-object v9, v0, v10

    .line 684
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "parentServerId=? and accountKey=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 689
    :cond_1
    iget-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->restoreMailboxSyncOptions()V

    .line 692
    :cond_2
    return-void

    .line 678
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public deleteParser(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v3, 0x1d0

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 220
    iget v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 245
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 222
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, serverId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 226
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Deleting "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 228
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 233
    iget-boolean v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v3, :cond_0

    .line 234
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, parentId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v1           #parentId:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 248
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1c8
        :pswitch_0
    .end packed-switch
.end method

.method isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z
    .locals 12
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 420
    iget v8, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 422
    .local v8, folderType:I
    const/16 v1, 0x40

    if-ge v8, v1, :cond_1

    move v6, v0

    .line 444
    :cond_0
    :goto_0
    return v6

    .line 424
    :cond_1
    const/16 v1, 0x45

    if-ne v8, v1, :cond_0

    .line 426
    iget-object v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/Mailbox;

    .line 429
    .local v9, parent:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v9, :cond_2

    .line 430
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 431
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 432
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND serverId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    .line 436
    .local v10, parentId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 439
    if-eqz v9, :cond_0

    .line 444
    .end local v10           #parentId:J
    :cond_2
    invoke-virtual {p0, v9, p2}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z

    move-result v6

    goto :goto_0
.end method

.method public parse()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, res:Z
    const/4 v3, 0x0

    .line 144
    .local v3, resetFolders:Z
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 145
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    .line 146
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v5, :cond_1

    .line 147
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "accountKey=? and type!=68"

    new-array v10, v7, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/16 v8, 0x1d6

    if-eq v5, v8, :cond_5

    .line 151
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v5, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v5

    :cond_2
    move v5, v6

    .line 145
    goto :goto_0

    .line 165
    .local v4, status:I
    :cond_3
    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 167
    :cond_4
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Bad sync key; RESET and delete all folders"

    invoke-virtual {v5, v8}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string v8, "0"

    iput-object v8, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "syncKey"

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8, v0, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    iget-wide v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 177
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->saveMailboxSyncOptions()V

    .line 179
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "accountKey=? and type!=68"

    new-array v10, v7, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    iget-wide v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 183
    const/4 v2, 0x1

    .line 184
    const/4 v3, 0x1

    .line 152
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #status:I
    :cond_5
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_d

    .line 153
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1cc

    if-ne v5, v8, :cond_8

    .line 154
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 155
    .restart local v4       #status:I
    if-eq v4, v7, :cond_5

    .line 156
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FolderSync failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 159
    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    .line 162
    :cond_6
    new-instance v5, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v5, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v5

    .line 188
    :cond_7
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Throwing IOException; will retry later"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 189
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    const-string v6, "Folder status error"

    invoke-direct {v5, p0, v6}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V

    throw v5

    .line 192
    .end local v4           #status:I
    :cond_8
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1d2

    if-ne v5, v8, :cond_9

    .line 193
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 194
    new-array v5, v13, [Ljava/lang/String;

    const-string v8, "New Account SyncKey: "

    aput-object v8, v5, v6

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_9
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1ce

    if-ne v5, v8, :cond_c

    .line 196
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    if-eqz v5, :cond_b

    .line 208
    :cond_a
    :goto_2
    return v2

    .line 197
    :cond_b
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    invoke-virtual {p0, v5, v8}, Lcom/android/exchange/adapter/FolderSyncParser;->changesParser(Ljava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 199
    :cond_c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto/16 :goto_1

    .line 201
    :cond_d
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    if-nez v5, :cond_a

    .line 202
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 203
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v3, :cond_f

    .line 204
    :cond_e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->commit()V

    .line 205
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Leaving FolderSyncParser with Account syncKey="

    aput-object v8, v5, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 207
    :cond_f
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    return-void
.end method

.method restoreMailboxSyncOptions()V
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 302
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 304
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 305
    .local v3, serverId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    .line 306
    .local v2, options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    const-string v4, "syncInterval"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$100(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v4, "syncLookback"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$200(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 310
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "serverId=? and accountKey=?"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 314
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    .end local v3           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    throw v4

    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 316
    return-void
.end method

.method saveMailboxSyncOptions()V
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 281
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND (syncInterval!=-1 OR syncLookback!=0)"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 285
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;-><init>(IILcom/android/exchange/adapter/FolderSyncParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_1
    return-void
.end method

.method public updateParser(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 449
    .local v5, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 450
    .local v2, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 451
    .local v4, parentId:Ljava/lang/String;
    :goto_0
    const/16 v6, 0x1d1

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 452
    iget v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v6, :pswitch_data_0

    .line 463
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 454
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 455
    goto :goto_0

    .line 457
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 458
    goto :goto_0

    .line 460
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 461
    goto :goto_0

    .line 469
    :cond_0
    if-eqz v5, :cond_6

    if-nez v2, :cond_1

    if-eqz v4, :cond_6

    .line 470
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 473
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 474
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Updating "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 476
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 477
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_2
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, oldParentId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 481
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v2, :cond_4

    .line 486
    const-string v6, "displayName"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_4
    const-string v6, "parentServerId"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v6, "parentKey"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #oldParentId:Ljava/lang/String;
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 502
    .end local v0           #c:Landroid/database/Cursor;
    :cond_6
    return-void

    .line 499
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
