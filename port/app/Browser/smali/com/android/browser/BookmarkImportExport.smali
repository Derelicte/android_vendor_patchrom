.class public Lcom/android/browser/BookmarkImportExport;
.super Ljava/lang/Object;
.source "BookmarkImportExport.java"


# static fields
.field public static final BOOKMARK_PROJECTION:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-class v0, Lcom/android/browser/BookmarkImportExport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BookmarkImportExport;->BOOKMARK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[BJ)V
    .locals 4
    .parameter "context"
    .parameter "url"
    .parameter "title"
    .parameter "favicon"
    .parameter "thumbnail"
    .parameter "parent"

    .prologue
    .line 281
    invoke-static {p0, p1, p5, p6}, Lcom/android/browser/BookmarkImportExport;->isBookmarkExist(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    :goto_0
    return-void

    .line 285
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v1, values:Landroid/content/ContentValues;
    :try_start_0
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "folder"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v2, "favicon"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 291
    const-string v2, "thumbnail"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 292
    const-string v2, "parent"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v3, "addBookmark"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addBookmarkFolder(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 10
    .parameter "context"
    .parameter "title"
    .parameter "parent"

    .prologue
    const-wide/16 v6, -0x1

    .line 300
    invoke-static {p0, p1, p2, p3}, Lcom/android/browser/BookmarkImportExport;->getBookmarkFolderId(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 301
    .local v1, folderId:J
    cmp-long v8, v1, v6

    if-eqz v8, :cond_0

    .line 317
    .end local v1           #folderId:J
    :goto_0
    return-wide v1

    .line 305
    .restart local v1       #folderId:J
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v5, values:Landroid/content/ContentValues;
    :try_start_0
    const-string v8, "title"

    invoke-virtual {v5, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v8, "folder"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v8, "parent"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 311
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 315
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v8, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v9, "BookmarkImportExport"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v1, v6

    .line 317
    goto :goto_0
.end method

.method private static exportBookmark(Landroid/content/Context;Ljava/io/BufferedWriter;J)V
    .locals 17
    .parameter "context"
    .parameter "output"
    .parameter "folderId"

    .prologue
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, selection:Ljava/lang/String;
    const/4 v8, 0x0

    .line 109
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/browser/BookmarkImportExport;->BOOKMARK_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 112
    if-eqz v8, :cond_9

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_9

    .line 115
    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v13, 0x1

    .line 116
    .local v13, isFolder:Z
    :goto_1
    if-eqz v13, :cond_3

    .line 118
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 119
    .local v11, id:J
    const-string v2, "<DT><H3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    const-string v2, " ADD_DATE=\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 121
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    const-string v2, "\">"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 124
    .local v15, title:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-static {v15}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 127
    :cond_0
    const-string v2, "</H3>\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 129
    const-string v2, "<DL><p>\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11, v12}, Lcom/android/browser/BookmarkImportExport;->exportBookmark(Landroid/content/Context;Ljava/io/BufferedWriter;J)V

    .line 131
    const-string v2, "</DL><p>\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 113
    .end local v11           #id:J
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v13           #isFolder:Z
    .end local v15           #title:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 169
    .local v9, e:Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 174
    .end local v9           #e:Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .line 115
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 135
    .restart local v13       #isFolder:Z
    :cond_3
    :try_start_2
    const-string v2, "<DT><A HREF=\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 137
    .local v16, url:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 138
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    :cond_4
    const-string v2, "\" ADD_DATE=\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 144
    const-string v2, "\" POSITION=\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    const/16 v2, 0x8

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 149
    .local v10, favicon:[B
    if-eqz v10, :cond_5

    .line 150
    const-string v2, "\" ICON=\"data:image/png;base64,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 151
    const/4 v2, 0x2

    invoke-static {v10, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 154
    :cond_5
    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 155
    .local v14, thumnail:[B
    if-eqz v14, :cond_6

    .line 156
    const-string v2, "\" THUMBNAIL=\"data:image/png;base64,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x2

    invoke-static {v14, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    :cond_6
    const-string v2, "\">"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 162
    .restart local v15       #title:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 163
    invoke-static {v15}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 164
    :cond_7
    const-string v2, "</A>\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 171
    .end local v10           #favicon:[B
    .end local v13           #isFolder:Z
    .end local v14           #thumnail:[B
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #url:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 171
    :cond_9
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method

.method public static exportBookmarks(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "folderPath"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, folder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 73
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_1
    const/4 v1, 0x0

    .line 81
    .local v1, filePath:Ljava/lang/String;
    const-string v6, "%s%s%s.html"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0170

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x2

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 91
    .local v3, output:Ljava/io/BufferedWriter;
    const-string v6, "<!DOCTYPE NETSCAPE-Bookmark-file-1>\n\t<!--This is an automatically generated file.\n\tIt will be read and overwritten.\n\tDo Not Edit! -->\n<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=UTF-8\">\n<Title>Bookmarks</Title>\n<H1>Bookmarks</H1>\n"

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 93
    const-wide/16 v6, 0x1

    invoke-static {p0, v3, v6, v7}, Lcom/android/browser/BookmarkImportExport;->exportBookmark(Landroid/content/Context;Ljava/io/BufferedWriter;J)V

    .line 95
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .line 101
    .end local v1           #filePath:Ljava/lang/String;
    .end local v3           #output:Ljava/io/BufferedWriter;
    :goto_0
    return v4

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v5, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #filePath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    sget-object v5, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getBookmarkFolderId(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "parent=? AND title=? AND folder=1 AND deleted=0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object p1, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 331
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 332
    .local v7, result:J
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 334
    :cond_0
    if-eqz v6, :cond_1

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_1
    return-wide v7
.end method

.method public static importBookmarks(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 26
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 187
    :try_start_0
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 188
    .local v15, folders:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/Long;>;"
    new-instance v2, Ljava/lang/Long;

    const-wide/16 v24, 0x1

    move-wide/from16 v0, v24

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v15, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v23, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 192
    .local v23, reader:Ljava/io/BufferedReader;
    const-string v21, ""

    .line 193
    .local v21, line:Ljava/lang/String;
    const-string v4, ""

    .line 195
    .local v4, title:Ljava/lang/String;
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v22, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v10, 0x0

    .line 198
    .local v10, childFolder:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 199
    .local v12, cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 200
    invoke-virtual {v15}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 202
    .local v7, currentParent:J
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const-string v2, "<DT><H3"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    const/4 v2, 0x0

    const-string v24, "<"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 208
    const-string v2, ">"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7, v8}, Lcom/android/browser/BookmarkImportExport;->addBookmarkFolder(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_0

    .line 213
    :cond_1
    const-string v2, "<DL><p>"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 269
    .end local v4           #title:Ljava/lang/String;
    .end local v7           #currentParent:J
    .end local v10           #childFolder:J
    .end local v12           #cr:Landroid/content/ContentResolver;
    .end local v15           #folders:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/Long;>;"
    .end local v21           #line:Ljava/lang/String;
    .end local v22           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v14

    .line 270
    .local v14, e:Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v24, "error"

    move-object/from16 v0, v24

    invoke-static {v2, v0, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    const/4 v2, 0x0

    .line 276
    .end local v14           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v2

    .line 217
    .restart local v4       #title:Ljava/lang/String;
    .restart local v7       #currentParent:J
    .restart local v10       #childFolder:J
    .restart local v12       #cr:Landroid/content/ContentResolver;
    .restart local v15       #folders:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/Long;>;"
    .restart local v21       #line:Ljava/lang/String;
    .restart local v22       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    const-string v2, "</DL><p>"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 272
    .end local v4           #title:Ljava/lang/String;
    .end local v7           #currentParent:J
    .end local v10           #childFolder:J
    .end local v12           #cr:Landroid/content/ContentResolver;
    .end local v15           #folders:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/Long;>;"
    .end local v21           #line:Ljava/lang/String;
    .end local v22           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v14

    .line 273
    .local v14, e:Ljava/io/IOException;
    sget-object v2, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v24, "error"

    move-object/from16 v0, v24

    invoke-static {v2, v0, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v2, 0x0

    goto :goto_1

    .line 221
    .end local v14           #e:Ljava/io/IOException;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v7       #currentParent:J
    .restart local v10       #childFolder:J
    .restart local v12       #cr:Landroid/content/ContentResolver;
    .restart local v15       #folders:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/Long;>;"
    .restart local v21       #line:Ljava/lang/String;
    .restart local v22       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_2
    const-string v2, "<DT><A"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const-string v2, "<DT><A"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v24, "\""

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 225
    const/4 v2, 0x0

    const/16 v24, 0x3e

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 227
    .local v19, items:[Ljava/lang/String;
    move-object/from16 v9, v19

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v18, v9, v16

    .line 228
    .local v18, item:Ljava/lang/String;
    const-string v2, "="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 229
    .local v17, index:I
    if-ltz v17, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 227
    :cond_4
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 232
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v24, v17, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 235
    .end local v17           #index:I
    .end local v18           #item:Ljava/lang/String;
    :cond_6
    const/16 v2, 0x3e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v2, v0, :cond_7

    const/16 v2, 0x3c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v2, v0, :cond_7

    .line 236
    const/16 v2, 0x3e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v24, 0x3c

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    :cond_7
    const/4 v5, 0x0

    .line 242
    .local v5, favicon:[B
    const-string v2, "ICON"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 243
    const-string v2, "ICON"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 244
    .local v13, dataFavicon:Ljava/lang/String;
    const-string v2, "data:image/png;base64,"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    .line 246
    const/4 v2, 0x2

    :try_start_3
    invoke-static {v13, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .line 252
    .end local v13           #dataFavicon:Ljava/lang/String;
    :cond_8
    :goto_4
    const/4 v6, 0x0

    .line 253
    .local v6, thumbnail:[B
    :try_start_4
    const-string v2, "THUMBNAIL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 254
    const-string v2, "THUMBNAIL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 255
    .restart local v13       #dataFavicon:Ljava/lang/String;
    const-string v2, "data:image/png;base64,"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v13

    .line 257
    const/4 v2, 0x2

    :try_start_5
    invoke-static {v13, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v6

    .line 263
    .end local v13           #dataFavicon:Ljava/lang/String;
    :cond_9
    :goto_5
    :try_start_6
    const-string v2, "HREF"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, url:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 264
    invoke-static/range {v2 .. v8}, Lcom/android/browser/BookmarkImportExport;->addBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[BJ)V

    .line 266
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 247
    .end local v3           #url:Ljava/lang/String;
    .end local v6           #thumbnail:[B
    .restart local v13       #dataFavicon:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 248
    .local v14, e:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v24, "error"

    move-object/from16 v0, v24

    invoke-static {v2, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 258
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #thumbnail:[B
    :catch_3
    move-exception v14

    .line 259
    .restart local v14       #e:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/browser/BookmarkImportExport;->LOG_TAG:Ljava/lang/String;

    const-string v24, "error"

    move-object/from16 v0, v24

    invoke-static {v2, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 276
    .end local v5           #favicon:[B
    .end local v6           #thumbnail:[B
    .end local v7           #currentParent:J
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v13           #dataFavicon:Ljava/lang/String;
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    .end local v16           #i$:I
    .end local v19           #items:[Ljava/lang/String;
    .end local v20           #len$:I
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private static isBookmarkExist(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "parent=? AND url=? AND folder=0 AND deleted=0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p1, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 351
    .local v7, result:Z
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v7, 0x1

    .line 353
    :cond_0
    if-eqz v6, :cond_1

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_1
    return v7
.end method
