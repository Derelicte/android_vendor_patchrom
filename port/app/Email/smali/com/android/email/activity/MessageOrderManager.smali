.class public Lcom/android/email/activity/MessageOrderManager;
.super Ljava/lang/Object;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;,
        Lcom/android/email/activity/MessageOrderManager$PostingCallback;,
        Lcom/android/email/activity/MessageOrderManager$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

.field private mClosed:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMessageId:J

.field private mCurrentPosition:I

.field private mCursor:Landroid/database/Cursor;

.field private final mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

.field private final mListContext:Lcom/android/email/MessageListContext;

.field private mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mTotalMessageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "listContext"
    .parameter "callback"

    .prologue
    .line 127
    new-instance v0, Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;Lcom/android/emailcommon/utility/DelayedOperations;)V

    .line 128
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;Lcom/android/emailcommon/utility/DelayedOperations;)V
    .locals 5
    .parameter "context"
    .parameter "listContext"
    .parameter "callback"
    .parameter "delayedOperations"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 74
    iput-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    .line 133
    invoke-virtual {p2}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 136
    iput-object p4, p0, Lcom/android/email/activity/MessageOrderManager;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    .line 137
    iput-object p2, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    .line 138
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/android/email/activity/MessageOrderManager$PostingCallback;-><init>(Lcom/android/email/activity/MessageOrderManager;Lcom/android/email/activity/MessageOrderManager$Callback;Lcom/android/email/activity/MessageOrderManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    .line 139
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$1;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->getHandlerForContentObserver()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageOrderManager$1;-><init>(Lcom/android/email/activity/MessageOrderManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mObserver:Landroid/database/ContentObserver;

    .line 147
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageOrderManager;)Lcom/android/emailcommon/utility/DelayedOperations;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageOrderManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageOrderManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->onContentChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageOrderManager;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->openNewCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private adjustCursorPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    iput v4, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 251
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 262
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    goto :goto_1

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iput v4, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 266
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessageNotFound()V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    goto :goto_0
.end method

.method private cancelTask()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 203
    return-void
.end method

.method private closeCursor()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    .line 210
    :cond_0
    return-void
.end method

.method private isTaskRunning()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContentChanged()V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    .line 222
    :cond_0
    return-void
.end method

.method private openNewCursor()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v4, v4, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v7, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v7}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v7

    invoke-static {v3, v4, v5, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->buildMessageListSelection(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "timeStamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private setCurrentMessageIdFromCursor()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 216
    :cond_0
    return-void
.end method

.method private startTask()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->cancelTask()V

    .line 188
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->startQuery()V

    .line 189
    return-void
.end method


# virtual methods
.method public canMoveToNewer()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canMoveToOlder()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    .line 229
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DelayedOperations;->removeCallbacks()V

    .line 230
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->cancelTask()V

    .line 231
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->closeCursor()V

    .line 232
    return-void
.end method

.method public getCurrentMessageId()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    return-wide v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    return v0
.end method

.method getHandlerForContentObserver()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public getListContext()Lcom/android/email/MessageListContext;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mListContext:Lcom/android/email/MessageListContext;

    return-object v0
.end method

.method public getTotalMessageCount()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    return v0
.end method

.method public moveTo(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 244
    iput-wide p1, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 245
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->adjustCursorPosition()V

    .line 247
    :cond_0
    return-void
.end method

.method public moveToNewer()Z
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 313
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->setCurrentMessageIdFromCursor()V

    .line 314
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    .line 315
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToOlder()Z
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 297
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->setCurrentMessageIdFromCursor()V

    .line 298
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    .line 299
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCursorOpenDone(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 369
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->closeCursor()V

    .line 370
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 382
    :goto_0
    return-void

    .line 375
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    .line 376
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    .line 377
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 378
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->adjustCursorPosition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    throw v0
.end method

.method startQuery()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;-><init>(Lcom/android/email/activity/MessageOrderManager;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 198
    return-void
.end method
