.class Lcom/android/contacts/calllog/CallLogQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;,
        Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final NEW_SECTION_TIME_WINDOW:J


# instance fields
.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNewCallsCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mOldCallsCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/contacts/calllog/CallLogQueryHandler;->NEW_SECTION_TIME_WINDOW:J

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V
    .locals 1
    .parameter "contentResolver"
    .parameter "listener"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method

.method private cancelFetch()V
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->cancelOperation(I)V

    .line 193
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->cancelOperation(I)V

    .line 194
    return-void
.end method

.method private createHeaderCursorFor(I)Landroid/database/Cursor;
    .locals 8
    .parameter "section"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 116
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/contacts/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 120
    .local v0, matrixCursor:Landroid/database/MatrixCursor;
    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 124
    return-object v0
.end method

.method private createMergedCursor()Landroid/database/Cursor;
    .locals 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 280
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 281
    .local v0, hasNewCalls:Z
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    .local v1, hasOldCalls:Z
    :goto_1
    if-nez v0, :cond_2

    .line 285
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 286
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 302
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    :goto_2
    return-object v2

    .end local v0           #hasNewCalls:Z
    .end local v1           #hasOldCalls:Z
    :cond_0
    move v0, v2

    .line 280
    goto :goto_0

    .restart local v0       #hasNewCalls:Z
    :cond_1
    move v1, v2

    .line 281
    goto :goto_1

    .line 289
    .restart local v1       #hasOldCalls:Z
    :cond_2
    if-nez v1, :cond_3

    .line 291
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 292
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createNewCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 302
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 296
    :cond_3
    :try_start_2
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createNewCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createOldCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 302
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 301
    .end local v0           #hasNewCalls:Z
    .end local v1           #hasOldCalls:Z
    :catchall_0
    move-exception v2

    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 302
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    throw v2
.end method

.method private createNewCallsHeaderCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createHeaderCursorFor(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createOldCallsHeaderCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createHeaderCursorFor(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private fetchCalls(IZZ)V
    .locals 10
    .parameter "token"
    .parameter "isNew"
    .parameter "voicemailOnly"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    const-string v0, "%s IS NOT NULL AND %s = 0 AND %s > ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "is_read"

    aput-object v2, v1, v6

    const-string v2, "is_read"

    aput-object v2, v1, v7

    const-string v2, "date"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, selection:Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/contacts/calllog/CallLogQueryHandler;->NEW_SECTION_TIME_WINDOW:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    .line 176
    .local v8, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 178
    const-string v0, "NOT (%s)"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v5, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 180
    :cond_0
    if-eqz p3, :cond_1

    .line 182
    const-string v0, "(%s) AND (%s = ?)"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v5, v1, v6

    const-string v2, "type"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 183
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/android/contacts/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private declared-synchronized invalidate()V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 248
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAdapterData(Landroid/database/Cursor;)V
    .locals 2
    .parameter "combinedCursor"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;

    .line 311
    .local v0, listener:Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p1}, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;->onCallsFetched(Landroid/database/Cursor;)V

    .line 314
    :cond_0
    return-void
.end method

.method private updateVoicemailStatus(Landroid/database/Cursor;)V
    .locals 2
    .parameter "statusCursor"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;

    .line 318
    .local v0, listener:Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0, p1}, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;->onVoicemailStatusFetched(Landroid/database/Cursor;)V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 106
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/contacts/calllog/CallLogQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public fetchAllCalls()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 144
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->invalidate()V

    .line 145
    const/16 v0, 0x35

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IZZ)V

    .line 146
    const/16 v0, 0x36

    invoke-direct {p0, v0, v2, v2}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IZZ)V

    .line 147
    return-void
.end method

.method public fetchVoicemailOnly()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 156
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->invalidate()V

    .line 157
    const/16 v0, 0x35

    invoke-direct {p0, v0, v2, v2}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IZZ)V

    .line 158
    const/16 v0, 0x36

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IZZ)V

    .line 159
    return-void
.end method

.method public fetchVoicemailStatus()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 163
    const/16 v1, 0x3a

    sget-object v3, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "is_read"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 235
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "is_read"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/16 v1, 0x39

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v0, " = 1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 204
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v1, 0x37

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public markNewVoicemailsAsOld()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v0, " = 1 AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v0, " = ?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 220
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v1, 0x38

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method protected declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 255
    monitor-enter p0

    const/16 v0, 0x35

    if-ne p1, v0, :cond_1

    .line 257
    :try_start_0
    new-instance v0, Lcom/android/contacts/calllog/ExtendedCursor;

    const-string v1, "section"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lcom/android/contacts/calllog/ExtendedCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createMergedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    const/16 v0, 0x36

    if-ne p1, v0, :cond_2

    .line 261
    :try_start_1
    new-instance v0, Lcom/android/contacts/calllog/ExtendedCursor;

    const-string v1, "section"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lcom/android/contacts/calllog/ExtendedCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 263
    :cond_2
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_3

    .line 264
    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->updateVoicemailStatus(Landroid/database/Cursor;)V

    goto :goto_1

    .line 267
    :cond_3
    const-string v0, "CallLogQueryHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown query completed: ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
