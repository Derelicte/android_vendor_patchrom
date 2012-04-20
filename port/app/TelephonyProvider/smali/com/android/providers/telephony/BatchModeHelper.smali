.class public Lcom/android/providers/telephony/BatchModeHelper;
.super Ljava/lang/Object;
.source "BatchModeHelper.java"


# static fields
.field private static sInstance:Lcom/android/providers/telephony/BatchModeHelper;


# instance fields
.field private mBatchLevel:I

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeletedUriToBroadcast:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSyncRequested:Z

.field private mThreadsToUpdateErrorState:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateHasAttachment:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateMessageCount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateSnippet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateUnreadCount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUrisToNotify:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/BatchModeHelper;->sInstance:Lcom/android/providers/telephony/BatchModeHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .parameter "context"
    .parameter "openHelper"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateMessageCount:Ljava/util/HashSet;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateErrorState:Ljava/util/HashSet;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateSnippet:Ljava/util/HashSet;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateHasAttachment:Ljava/util/HashSet;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mUrisToNotify:Ljava/util/HashSet;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDeletedUriToBroadcast:Ljava/util/HashSet;

    .line 25
    iput-boolean v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mSyncRequested:Z

    .line 40
    iput-object p1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/providers/telephony/BatchModeHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/android/providers/telephony/BatchModeHelper;
    .locals 1
    .parameter "context"
    .parameter "openHelper"

    .prologue
    .line 33
    sget-object v0, Lcom/android/providers/telephony/BatchModeHelper;->sInstance:Lcom/android/providers/telephony/BatchModeHelper;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/providers/telephony/BatchModeHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/telephony/BatchModeHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    sput-object v0, Lcom/android/providers/telephony/BatchModeHelper;->sInstance:Lcom/android/providers/telephony/BatchModeHelper;

    .line 36
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/BatchModeHelper;->sInstance:Lcom/android/providers/telephony/BatchModeHelper;

    return-object v0
.end method

.method private internalBroadcastDeletedContents(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CONTENT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleted_contents"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void
.end method


# virtual methods
.method public beginBatchOps()V
    .locals 4

    .prologue
    .line 45
    const-string v0, "BatchModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entering batch level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 48
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 49
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateErrorState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 50
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 51
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateHasAttachment:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 52
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mUrisToNotify:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 53
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDeletedUriToBroadcast:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mSyncRequested:Z

    .line 55
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 58
    :cond_0
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    .line 59
    const-string v0, "BatchModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entered batch level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public broadcastDeletedContents(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 167
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDeletedUriToBroadcast:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/BatchModeHelper;->internalBroadcastDeletedContents(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public endBatchOps()V
    .locals 9

    .prologue
    .line 63
    const-string v5, "BatchModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exiting batch level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v5, :cond_0

    .line 65
    iget v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    .line 67
    :cond_0
    iget v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-nez v5, :cond_8

    .line 69
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 70
    .local v2, threadId:J
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 73
    .end local v2           #threadId:J
    :cond_1
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 74
    .restart local v2       #threadId:J
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_1

    .line 77
    .end local v2           #threadId:J
    :cond_2
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateErrorState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 78
    .restart local v2       #threadId:J
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_2

    .line 81
    .end local v2           #threadId:J
    :cond_3
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 82
    .restart local v2       #threadId:J
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadSnippet(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_3

    .line 86
    .end local v2           #threadId:J
    :cond_4
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateHasAttachment:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 87
    .restart local v2       #threadId:J
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_4

    .line 91
    .end local v2           #threadId:J
    :cond_5
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mUrisToNotify:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 93
    .local v4, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_5

    .line 97
    .end local v4           #uri:Landroid/net/Uri;
    :cond_6
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDeletedUriToBroadcast:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 98
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/BatchModeHelper;->internalBroadcastDeletedContents(Landroid/net/Uri;)V

    goto :goto_6

    .line 100
    .end local v4           #uri:Landroid/net/Uri;
    :cond_7
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 101
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    iget-boolean v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mSyncRequested:Z

    if-eqz v5, :cond_8

    .line 105
    iget-object v5, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/providers/telephony/MmsSmsUtils;->requestSync(Landroid/content/Context;)V

    .line 108
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_8
    const-string v5, "BatchModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exited batch level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 181
    iget v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mUrisToNotify:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public requestSync()V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mSyncRequested:Z

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsUtils;->requestSync(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadSnippet(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 117
    return-void
.end method

.method public updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateErrorState:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 152
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateHasAttachment:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadHasAttachmentByMsg(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "msgId"

    .prologue
    .line 160
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsUtils;->msgIdToThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 161
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 162
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 164
    :cond_0
    return-void
.end method

.method public updateThreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadSnippet(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadSnippet(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method
