.class public Lcom/miui/player/network/DownloadProvider;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# static fields
.field public static final DOWNLOAD_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/miui/player/network/DownloadProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/DownloadProvider;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/DownloadProvider;->DOWNLOAD_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFileStatus(Ljava/io/File;J)Z
    .locals 13
    .parameter "file"
    .parameter "timeOut"

    .prologue
    const-wide/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 26
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 31
    .local v3, dir:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    move v2, v8

    .line 42
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_4

    move v2, v8

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    const/4 v2, 0x0

    .line 49
    .local v2, deleteSuccess:Z
    const-wide/16 v11, 0x0

    cmp-long v8, p1, v11

    if-lez v8, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    .local v0, current:J
    add-long v4, v0, p1

    .line 53
    .local v4, end:J
    :cond_5
    sub-long v6, v4, v0

    .line 55
    .local v6, remainTime:J
    :try_start_0
    sget-object v8, Lcom/miui/player/network/DownloadProvider;->TAG:Ljava/lang/String;

    const-string v11, "waiting file to be delete"

    invoke-static {v8, v11}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    cmp-long v8, v6, v9

    if-gez v8, :cond_6

    .end local v6           #remainTime:J
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 60
    const/4 v2, 0x1

    .line 61
    goto :goto_0

    .restart local v6       #remainTime:J
    :cond_6
    move-wide v6, v9

    .line 56
    goto :goto_1

    .line 63
    .end local v6           #remainTime:J
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    cmp-long v8, v0, v4

    if-ltz v8, :cond_5

    goto :goto_0

    .line 57
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static isRawStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 179
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    return v0
.end method

.method public static isRawStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 170
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    return v0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 152
    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "context"
    .parameter "onlineId"

    .prologue
    const/4 v11, 0x0

    .line 111
    if-nez p0, :cond_1

    move-object v0, v11

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v11

    .line 116
    goto :goto_0

    .line 119
    :cond_2
    invoke-static {p1}, Lcom/miui/player/network/DownloadInfoManager;->getDownloadId(Ljava/lang/String;)J

    move-result-wide v8

    .line 120
    .local v8, id:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_3

    move-object v0, v11

    .line 121
    goto :goto_0

    .line 124
    :cond_3
    const-string v6, "(status >= \'100\') AND (status <= \'199\')"

    .line 126
    .local v6, WHERE_RUNNING_ALL:Ljava/lang/String;
    const-string v10, "(status >= \'100\') AND (status <= \'199\') AND _id= ?"

    .line 127
    .local v10, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 131
    .local v4, args:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 133
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(status >= \'100\') AND (status <= \'199\') AND _id= ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 134
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 138
    if-eqz v7, :cond_0

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 138
    :cond_4
    if-eqz v7, :cond_5

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v11

    .line 143
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static registerDownloadObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)Z
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    const/4 v1, 0x1

    .line 184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 185
    :cond_0
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 188
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, res:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    invoke-virtual {p3, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "onlineId"
    .parameter "details"
    .parameter "appointName"
    .parameter "sunDirectory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 72
    .local p6, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;
    .locals 12
    .parameter "context"
    .parameter "url"
    .parameter "onlineId"
    .parameter "details"
    .parameter "appointName"
    .parameter "subDirectory"
    .parameter
    .parameter "visible"
    .parameter "timeOut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZJ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 78
    .local p6, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/miui/player/meta/MetaManager;->getAppointFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 79
    .local v2, dst:Ljava/io/File;
    move-wide/from16 v0, p8

    invoke-static {v2, v0, v1}, Lcom/miui/player/network/DownloadProvider;->checkFileStatus(Ljava/io/File;J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 80
    const/4 v7, 0x0

    .line 107
    :goto_0
    return-object v7

    .line 83
    :cond_0
    new-instance v6, Landroid/app/MiuiDownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/MiuiDownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 84
    .local v6, request:Landroid/app/MiuiDownloadManager$Request;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/MiuiDownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 85
    if-eqz p7, :cond_2

    .line 86
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/MiuiDownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 87
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/MiuiDownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 92
    :goto_1
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/app/MiuiDownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 93
    if-eqz p7, :cond_1

    .line 94
    invoke-virtual {v6}, Landroid/app/MiuiDownloadManager$Request;->allowScanningByMediaScanner()V

    .line 96
    :cond_1
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/app/MiuiDownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 97
    const-string v7, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

    invoke-virtual {v6, v7}, Landroid/app/MiuiDownloadManager$Request;->setUserAgent(Ljava/lang/String;)V

    .line 99
    const-string v7, "download"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    .line 100
    .local v5, manager:Landroid/app/DownloadManager;
    invoke-virtual {v5, v6}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v3

    .line 102
    .local v3, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "entity=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    invoke-static {v3, v4, p3}, Lcom/miui/player/network/DownloadInfoManager;->registerDetails(JLjava/lang/String;)V

    .line 106
    move-object/from16 v0, p6

    invoke-static {p2, v3, v4, v0}, Lcom/miui/player/network/DownloadInfoManager;->registerDownload(Ljava/lang/String;JLjava/util/List;)V

    .line 107
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-ltz v7, :cond_3

    sget-object v7, Lcom/miui/player/network/DownloadProvider;->DOWNLOAD_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 89
    .end local v3           #id:J
    .end local v5           #manager:Landroid/app/DownloadManager;
    :cond_2
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/app/MiuiDownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 90
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/MiuiDownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    goto :goto_1

    .line 107
    .restart local v3       #id:J
    .restart local v5       #manager:Landroid/app/DownloadManager;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, res:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    return-void
.end method
