.class public Lcom/android/providers/downloads/DownloadInfo$Reader;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0
    .parameter "resolver"
    .parameter "cursor"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    .line 56
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    .line 57
    return-void
.end method

.method private addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "header"
    .parameter "value"

    .prologue
    .line 178
    #getter for: Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/android/providers/downloads/DownloadInfo;->access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method private getInt(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 192
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "column"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, p1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "column"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, index:I
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .end local v1           #s:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getUriDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "uriString"

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v2

    .line 135
    :cond_1
    const/4 v1, 0x0

    .line 137
    .local v1, uri:Ljava/net/URI;
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, uriAuth:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 138
    .end local v2           #uriAuth:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readRequestHeaders(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 153
    #getter for: Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/android/providers/downloads/DownloadInfo;->access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v3, "headers"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, headerUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "header"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 160
    .local v7, headerIndex:I
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 162
    .local v8, valueIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    .end local v7           #headerIndex:I
    .end local v8           #valueIndex:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #headerIndex:I
    .restart local v8       #valueIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "Cookie"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 173
    const-string v0, "Referer"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    return-void
.end method


# virtual methods
.method public newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)Lcom/android/providers/downloads/DownloadInfo;
    .locals 2
    .parameter "context"
    .parameter "systemFacade"

    .prologue
    .line 60
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo$1;)V

    .line 61
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->readRequestHeaders(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 63
    return-object v0
.end method

.method public updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 13
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 67
    const-string v0, "_id"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 68
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getUriDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUriDomain:Ljava/lang/String;

    .line 70
    const-string v0, "no_integrity"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v11, :cond_4

    move v0, v11

    :goto_0
    iput-boolean v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    .line 71
    const-string v0, "hint"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    .line 72
    const-string v0, "_data"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 73
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 74
    const-string v0, "destination"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    .line 75
    const-string v0, "visibility"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    .line 76
    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 77
    const-string v0, "status"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 81
    .local v8, cursorStatus:I
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 82
    .local v9, latestCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    const-string v0, "status"

    invoke-direct {p0, v9, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 87
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 90
    .end local v8           #cursorStatus:I
    .end local v9           #latestCursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "numfailed"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    .line 91
    const-string v0, "method"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 92
    .local v10, retryRedirect:I
    const v0, 0xfffffff

    and-int/2addr v0, v10

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    .line 93
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    .line 94
    const-string v0, "notificationpackage"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 95
    const-string v0, "notificationclass"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    .line 96
    const-string v0, "notificationextras"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    .line 97
    const-string v0, "cookiedata"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    .line 98
    const-string v0, "useragent"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 99
    const-string v0, "referer"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 100
    const-string v0, "total_bytes"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 101
    .local v6, cursorBytes:J
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    .line 102
    :cond_1
    iput-wide v6, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 104
    :cond_2
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 105
    const-string v0, "etag"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    .line 106
    const-string v0, "if_range_id"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mIfRange:Ljava/lang/String;

    .line 107
    const-string v0, "uid"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    .line 108
    const-string v0, "scanned"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:I

    .line 109
    const-string v0, "deleted"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v11, :cond_6

    move v0, v11

    :goto_2
    iput-boolean v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    .line 110
    const-string v0, "mediaprovider_uri"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    .line 111
    const-string v0, "is_public_api"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v11

    :goto_3
    iput-boolean v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    .line 112
    const-string v0, "allowed_network_types"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    .line 113
    const-string v0, "allow_roaming"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    iput-boolean v11, p1, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 114
    const-string v0, "title"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 115
    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 116
    const-string v0, "bypass_recommended_size_limit"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    .line 118
    const-string v0, "subdirectory"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mSubDirectory:Ljava/lang/String;

    .line 119
    const-string v0, "appointname"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mAppointName:Ljava/lang/String;

    .line 121
    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc6

    if-eq v0, v1, :cond_3

    .line 122
    iput-boolean v12, p1, Lcom/android/providers/downloads/DownloadInfo;->mInsufficientAlreadyPosted:Z

    .line 125
    :cond_3
    monitor-enter p0

    .line 126
    :try_start_0
    const-string v0, "control"

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    return-void

    .end local v6           #cursorBytes:J
    .end local v10           #retryRedirect:I
    :cond_4
    move v0, v12

    .line 70
    goto/16 :goto_0

    .line 85
    .restart local v8       #cursorStatus:I
    .restart local v9       #latestCursor:Landroid/database/Cursor;
    :cond_5
    iput v8, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    goto/16 :goto_1

    .end local v8           #cursorStatus:I
    .end local v9           #latestCursor:Landroid/database/Cursor;
    .restart local v6       #cursorBytes:J
    .restart local v10       #retryRedirect:I
    :cond_6
    move v0, v12

    .line 109
    goto :goto_2

    :cond_7
    move v0, v12

    .line 111
    goto :goto_3

    :cond_8
    move v11, v12

    .line 113
    goto :goto_4

    .line 127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
