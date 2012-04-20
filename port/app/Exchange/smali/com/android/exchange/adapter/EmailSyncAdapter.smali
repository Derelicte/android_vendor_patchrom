.class public Lcom/android/exchange/adapter/EmailSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;,
        Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;,
        Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    }
.end annotation


# static fields
.field private static final FETCH_REQUEST_PROJECTION:[Ljava/lang/String; = null

.field static final LAST_VERB_FORWARD:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY_ALL:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

.field private static final UPDATES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mBindArgument:[Ljava/lang/String;

.field private final mBindArguments:[Ljava/lang/String;

.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchNeeded:Z

.field private final mFetchRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLooping:Z

.field private final mPolicy:Lcom/android/emailcommon/provider/Policy;

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flagRead"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    .line 95
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 4
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    .line 124
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 135
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    return-object v0
.end method

.method private addCleanupOps(Ljava/util/ArrayList;)V
    .locals 5
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

    .prologue
    .line 1167
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1168
    .local v1, id:Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1172
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1173
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1176
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method private formatTwo(I)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 1201
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1204
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAutomaticLookback()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 293
    sget-object v7, Lcom/android/exchange/Eas;->FILTER_1_WEEK:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEstimate(Ljava/lang/String;)I

    move-result v1

    .line 295
    .local v1, items:I
    const/16 v7, 0x41a

    if-le v1, v7, :cond_1

    .line 297
    const/4 v2, 0x1

    .line 320
    .local v2, lookback:I
    :goto_0
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 321
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v4

    .line 322
    .local v4, policy:Lcom/android/emailcommon/provider/Policy;
    if-eqz v4, :cond_0

    .line 323
    iget v3, v4, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 324
    .local v3, maxLookback:I
    if-eqz v3, :cond_0

    iget v7, v4, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-le v2, v7, :cond_0

    .line 325
    iget v2, v4, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 332
    .end local v3           #maxLookback:I
    .end local v4           #policy:Lcom/android/emailcommon/provider/Policy;
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v7, :cond_8

    .line 335
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v2, v7, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 336
    const-string v7, "syncLookback"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    sget-object v7, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 343
    .local v5, uri:Landroid/net/Uri;
    :goto_1
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5, v0, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f05

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 347
    .local v6, windowEntries:[Ljava/lang/CharSequence;
    const-string v7, "EmailSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto lookback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 298
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #lookback:I
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #windowEntries:[Ljava/lang/CharSequence;
    :cond_1
    const/16 v7, 0x15e

    if-gt v1, v7, :cond_2

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    .line 300
    :cond_2
    const/4 v2, 0x2

    .restart local v2       #lookback:I
    goto :goto_0

    .line 301
    .end local v2           #lookback:I
    :cond_3
    const/16 v7, 0x96

    if-le v1, v7, :cond_4

    .line 303
    const/4 v2, 0x3

    .restart local v2       #lookback:I
    goto :goto_0

    .line 304
    .end local v2           #lookback:I
    :cond_4
    const/16 v7, 0x4b

    if-le v1, v7, :cond_5

    .line 306
    const/4 v2, 0x4

    .restart local v2       #lookback:I
    goto/16 :goto_0

    .line 307
    .end local v2           #lookback:I
    :cond_5
    const/4 v7, 0x5

    if-ge v1, v7, :cond_7

    .line 309
    const-string v7, "0"

    invoke-direct {p0, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEstimate(Ljava/lang/String;)I

    move-result v1

    .line 310
    if-ltz v1, :cond_6

    const/16 v7, 0x64

    if-ge v1, v7, :cond_6

    .line 311
    const/4 v2, 0x6

    .restart local v2       #lookback:I
    goto/16 :goto_0

    .line 313
    .end local v2           #lookback:I
    :cond_6
    const/4 v2, 0x5

    .restart local v2       #lookback:I
    goto/16 :goto_0

    .line 316
    .end local v2           #lookback:I
    :cond_7
    const/4 v2, 0x5

    .restart local v2       #lookback:I
    goto/16 :goto_0

    .line 339
    .restart local v0       #cv:Landroid/content/ContentValues;
    :cond_8
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v2, v7, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 340
    const-string v7, "syncLookback"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .restart local v5       #uri:Landroid/net/Uri;
    goto :goto_1
.end method

.method private getEmailFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 158
    .local v0, syncLookback:I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v1, :cond_1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 162
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 178
    :pswitch_0
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_1_WEEK:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 164
    :pswitch_1
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_AUTO:Ljava/lang/String;

    goto :goto_0

    .line 166
    :pswitch_2
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_1_DAY:Ljava/lang/String;

    goto :goto_0

    .line 168
    :pswitch_3
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_3_DAYS:Ljava/lang/String;

    goto :goto_0

    .line 170
    :pswitch_4
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_1_WEEK:Ljava/lang/String;

    goto :goto_0

    .line 172
    :pswitch_5
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_2_WEEKS:Ljava/lang/String;

    goto :goto_0

    .line 174
    :pswitch_6
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_1_MONTH:Ljava/lang/String;

    goto :goto_0

    .line 176
    :pswitch_7
    const-string v1, "0"

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getEstimate(Ljava/lang/String;)I
    .locals 14
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v8, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v8}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 419
    .local v8, s:Lcom/android/exchange/adapter/Serializer;
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x402c

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    const/4 v4, 0x1

    .line 420
    .local v4, ex10:Z
    :goto_0
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4028

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    const/4 v2, 0x1

    .line 421
    .local v2, ex03:Z
    :goto_1
    if-nez v4, :cond_2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    .line 423
    .local v3, ex07:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, className:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, syncKey:Ljava/lang/String;
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "gie, sending "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    const-string v12, " syncKey: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v9, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 427
    const/16 v10, 0x185

    invoke-virtual {v8, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    const/16 v11, 0x187

    invoke-virtual {v10, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 428
    const/16 v10, 0x188

    invoke-virtual {v8, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 429
    if-eqz v3, :cond_3

    .line 431
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 432
    const/16 v10, 0x18

    invoke-virtual {v8, v10, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 433
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 446
    :goto_3
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 448
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v11, "GetItemEstimate"

    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v13, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v7

    .line 451
    .local v7, resp:Lcom/android/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 452
    .local v1, code:I
    const/16 v10, 0xc8

    if-ne v1, v10, :cond_5

    .line 453
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 454
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 455
    .local v6, is:Ljava/io/InputStream;
    new-instance v5, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;

    invoke-direct {v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;-><init>(Ljava/io/InputStream;)V

    .line 456
    .local v5, gieParser:Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
    invoke-virtual {v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parse()Z

    .line 458
    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I
    invoke-static {v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->access$000(Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 462
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    .line 465
    .end local v5           #gieParser:Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
    .end local v6           #is:Ljava/io/InputStream;
    :goto_4
    return v10

    .line 419
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #code:I
    .end local v2           #ex03:Z
    .end local v3           #ex07:Z
    .end local v4           #ex10:Z
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    .end local v9           #syncKey:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 420
    .restart local v4       #ex10:Z
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 421
    .restart local v2       #ex03:Z
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 434
    .restart local v0       #className:Ljava/lang/String;
    .restart local v3       #ex07:Z
    .restart local v9       #syncKey:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 436
    const/16 v10, 0x189

    invoke-virtual {v8, v10, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 437
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 438
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 439
    const/16 v10, 0x18

    invoke-virtual {v8, v10, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_3

    .line 442
    :cond_4
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 443
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 444
    const/16 v10, 0x17

    invoke-virtual {v8, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    const/16 v11, 0x18

    invoke-virtual {v10, v11, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 462
    .restart local v7       #resp:Lcom/android/exchange/EasResponse;
    :catchall_0
    move-exception v10

    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    throw v10

    .restart local v1       #code:I
    :cond_5
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    .line 465
    const/4 v10, -0x1

    goto :goto_4
.end method

.method private messageReferenced(Landroid/content/ContentResolver;J)Z
    .locals 7
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1238
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sourceMessageKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1241
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1241
    return v0

    .line 1243
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public cleanup()V
    .locals 5

    .prologue
    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1184
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mailboxKey=? AND (flags&512)!=0"

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1188
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    .line 1191
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :goto_0
    return-void

    .line 1195
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1193
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "calendar"

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x2d

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1215
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1217
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1219
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1221
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1223
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1225
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const-string v1, ".000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    const-string v0, "Email"

    return-object v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V

    .line 270
    .local v0, p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 271
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->parse()Z

    move-result v1

    .line 273
    .local v1, res:Z
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->isLooping()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 275
    iget-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    :cond_0
    const/4 v1, 0x1

    .line 287
    .end local v1           #res:Z
    :cond_1
    :goto_0
    return v1

    .line 280
    .restart local v1       #res:Z
    :cond_2
    const-string v2, "0"

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEmailFilter()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/exchange/Eas;->FILTER_AUTO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getAutomaticLookback()V

    goto :goto_0
.end method

.method sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z
    .locals 10
    .parameter "s"
    .parameter
    .parameter "first"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/Serializer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, deletedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1260
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1263
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1267
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1269
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1270
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1272
    .local v7, serverId:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1275
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->messageReferenced(Landroid/content/ContentResolver;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1276
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Postponing deletion of referenced message: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1287
    .end local v7           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1278
    .restart local v7       #serverId:Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 1279
    const/16 v1, 0x16

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1280
    const/4 p3, 0x0

    .line 1283
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1284
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1287
    .end local v7           #serverId:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1290
    return p3
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 32
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1295
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1297
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1298
    const/4 v5, 0x0

    .line 1457
    :goto_0
    return v5

    .line 1302
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1303
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1307
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter;->sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z

    move-result v14

    .line 1309
    .local v14, firstCommand:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1313
    if-eqz v14, :cond_3

    .line 1314
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1315
    const/4 v14, 0x0

    .line 1317
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    .line 1318
    .local v27, req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;->serverId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_1

    .line 1323
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v27           #req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    const/4 v8, 0x6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v29

    .line 1327
    .local v29, trashMailboxId:J
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailboxKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1331
    .local v10, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1333
    :try_start_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1334
    .local v13, cv:Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1335
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1337
    .local v19, id:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 1344
    .local v12, currentCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    .line 1447
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1451
    .end local v12           #currentCursor:Landroid/database/Cursor;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #id:J
    :catchall_0
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1348
    .restart local v12       #currentCursor:Landroid/database/Cursor;
    .restart local v13       #cv:Landroid/content/ContentValues;
    .restart local v19       #id:J
    :cond_5
    const/4 v5, 0x2

    :try_start_3
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v28

    .line 1349
    .local v28, serverId:Ljava/lang/String;
    if-nez v28, :cond_6

    .line 1447
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1353
    :cond_6
    const/16 v16, 0x0

    .line 1354
    .local v16, flagChange:Z
    const/16 v26, 0x0

    .line 1356
    .local v26, readChange:Z
    const/4 v5, 0x1

    :try_start_5
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1358
    .local v21, mailbox:J
    cmp-long v5, v21, v29

    if-nez v5, :cond_8

    .line 1359
    if-eqz v14, :cond_7

    .line 1360
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1361
    const/4 v14, 0x0

    .line 1364
    :cond_7
    const/16 v5, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v28

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1367
    const/16 v5, 0x8

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1368
    .local v17, flags:I
    const-string v5, "flags"

    move/from16 v0, v17

    or-int/lit16 v6, v0, 0x200

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1370
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v13, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1447
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1373
    .end local v17           #flags:I
    :cond_8
    const/16 v5, 0x9

    :try_start_7
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v21, v5

    if-eqz v5, :cond_9

    .line 1378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v6, Lcom/android/exchange/MessageMoveRequest;

    move-wide/from16 v0, v19

    move-wide/from16 v2, v21

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/exchange/MessageMoveRequest;-><init>(JJ)V

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1387
    :cond_9
    const/4 v15, 0x0

    .line 1388
    .local v15, flag:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_a

    .line 1389
    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1390
    const/4 v5, 0x6

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v15, v5, :cond_a

    .line 1391
    const/16 v16, 0x1

    .line 1395
    :cond_a
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1396
    .local v25, read:I
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v5

    move/from16 v0, v25

    if-eq v0, v5, :cond_b

    .line 1397
    const/16 v26, 0x1

    .line 1400
    :cond_b
    if-nez v16, :cond_c

    if-nez v26, :cond_c

    .line 1447
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1405
    :cond_c
    if-eqz v14, :cond_d

    .line 1406
    const/16 v5, 0x16

    :try_start_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1407
    const/4 v14, 0x0

    .line 1410
    :cond_d
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    const/16 v7, 0xb

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1413
    if-eqz v26, :cond_e

    .line 1414
    const/16 v5, 0x95

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1422
    :cond_e
    if-eqz v16, :cond_f

    .line 1423
    if-eqz v15, :cond_10

    .line 1425
    const/16 v5, 0xba

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xbb

    const-string v7, "2"

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1427
    const/16 v5, 0xbd

    const-string v6, "FollowUp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 1429
    .local v23, now:J
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 1431
    .local v11, calendar:Ljava/util/Calendar;
    move-wide/from16 v0, v23

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1434
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v31

    .line 1435
    .local v31, utc:Ljava/lang/String;
    const/16 v5, 0x25e

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x25f

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1437
    const-wide/32 v5, 0x240c8400

    add-long v5, v5, v23

    invoke-virtual {v11, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1438
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v31

    .line 1439
    const/16 v5, 0x24c

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x24d

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1440
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1445
    .end local v11           #calendar:Ljava/util/Calendar;
    .end local v23           #now:J
    .end local v31           #utc:Ljava/lang/String;
    :cond_f
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1447
    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 1442
    :cond_10
    const/16 v5, 0xba

    :try_start_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 1447
    .end local v15           #flag:I
    .end local v16           #flagChange:Z
    .end local v21           #mailbox:J
    .end local v25           #read:I
    .end local v26           #readChange:Z
    .end local v28           #serverId:Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1451
    .end local v12           #currentCursor:Landroid/database/Cursor;
    .end local v19           #id:J
    :cond_11
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1454
    if-nez v14, :cond_12

    .line 1455
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1457
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .locals 11
    .parameter "protocolVersion"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "flagLoaded=2 AND mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 226
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 227
    .local v8, isTrashMailbox:Z
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 228
    if-nez v8, :cond_1

    .line 229
    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 234
    :cond_1
    :goto_2
    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 235
    const/16 v0, 0x15

    const-string v1, "5"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 236
    const/16 v0, 0x17

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 238
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEmailFilter()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, filter:Ljava/lang/String;
    sget-object v0, Lcom/android/exchange/Eas;->FILTER_AUTO:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    sget-object v7, Lcom/android/exchange/Eas;->FILTER_3_DAYS:Ljava/lang/String;

    .line 243
    :cond_2
    const/16 v0, 0x18

    invoke-virtual {p2, v0, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 245
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    .line 246
    const/16 v0, 0x445

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 248
    const/16 v0, 0x446

    const-string v1, "2"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 249
    const/16 v0, 0x447

    const-string v1, "200000"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 250
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 256
    :goto_3
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 265
    .end local v7           #filter:Ljava/lang/String;
    .end local v8           #isTrashMailbox:Z
    :goto_4
    return-void

    .line 226
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 232
    .restart local v8       #isTrashMailbox:Z
    :cond_4
    const/16 v1, 0x1e

    if-eqz v8, :cond_5

    const-string v0, "0"

    :goto_5
    invoke-virtual {p2, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_2

    :cond_5
    const-string v0, "1"

    goto :goto_5

    .line 253
    .restart local v7       #filter:Ljava/lang/String;
    :cond_6
    const/16 v0, 0x22

    const-string v1, "2"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 254
    const/16 v0, 0x23

    const-string v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_3

    .line 258
    .end local v7           #filter:Ljava/lang/String;
    .end local v8           #isTrashMailbox:Z
    :cond_7
    const/16 v0, 0x17

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 261
    const/16 v0, 0x22

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 262
    const/16 v0, 0x19

    const-string v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 263
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_4
.end method

.method public wipe()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->clearRequests()V

    .line 151
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 154
    return-void
.end method
