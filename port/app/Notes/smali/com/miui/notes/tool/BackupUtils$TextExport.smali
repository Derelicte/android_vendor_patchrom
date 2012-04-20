.class Lcom/miui/notes/tool/BackupUtils$TextExport;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/tool/BackupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextExport"
.end annotation


# static fields
.field private static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final NOTE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final TEXT_FORMAT:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFileDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "modified_date"

    aput-object v1, v0, v3

    const-string v1, "snippet"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/notes/tool/BackupUtils$TextExport;->NOTE_PROJECTION:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/notes/tool/BackupUtils$TextExport;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->TEXT_FORMAT:[Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mFileName:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mFileDirectory:Ljava/lang/String;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/miui/notes/tool/BackupUtils$TextExport;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/notes/tool/BackupUtils$TextExport;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mFileDirectory:Ljava/lang/String;

    return-object v0
.end method

.method private exportFolderToText(Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 10
    .parameter "folderId"
    .parameter "ps"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 125
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/tool/BackupUtils$TextExport;->NOTE_PROJECTION:[Ljava/lang/String;

    const-string v3, "parent_id=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 130
    .local v7, notesCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    invoke-direct {p0, v8}, Lcom/miui/notes/tool/BackupUtils$TextExport;->getFormat(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, noteId:Ljava/lang/String;
    invoke-direct {p0, v6, p2}, Lcom/miui/notes/tool/BackupUtils$TextExport;->exportNoteToText(Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    .end local v6           #noteId:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_2
    return-void
.end method

.method private exportNoteToText(Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 15
    .parameter "noteId"
    .parameter "ps"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/notes/tool/BackupUtils$TextExport;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v4, "note_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 155
    .local v10, dataCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 156
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, mimeType:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/call_note"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 163
    .local v7, callDate:J
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, location:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/notes/tool/BackupUtils$TextExport;->getFormat(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/notes/tool/BackupUtils$TextExport;->getFormat(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/notes/tool/BackupUtils$TextExport;->getFormat(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    .end local v7           #callDate:J
    .end local v12           #location:Ljava/lang/String;
    .end local v14           #phoneNumber:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    .end local v13           #mimeType:Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_4
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    return-void

    .line 178
    .restart local v13       #mimeType:Ljava/lang/String;
    :cond_5
    const-string v1, "vnd.android.cursor.item/text_note"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, content:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 181
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/notes/tool/BackupUtils$TextExport;->getFormat(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v9           #content:Ljava/lang/String;
    .end local v13           #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 195
    .local v11, e:Ljava/io/IOException;
    const-string v1, "BackupUtils"

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method private getExportToTextPrintStream()Ljava/io/PrintStream;
    .locals 8

    .prologue
    const v7, 0x7f090012

    const/4 v4, 0x0

    .line 270
    iget-object v5, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    const v6, 0x7f090013

    #calls: Lcom/miui/notes/tool/BackupUtils;->generateFileMountedOnSDcard(Landroid/content/Context;II)Ljava/io/File;
    invoke-static {v5, v7, v6}, Lcom/miui/notes/tool/BackupUtils;->access$300(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v1

    .line 272
    .local v1, file:Ljava/io/File;
    if-nez v1, :cond_0

    .line 273
    const-string v5, "BackupUtils"

    const-string v6, "create file to exported failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 289
    :goto_0
    return-object v3

    .line 276
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mFileName:Ljava/lang/String;

    .line 277
    iget-object v5, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mFileDirectory:Ljava/lang/String;

    .line 278
    const/4 v3, 0x0

    .line 280
    .local v3, ps:Ljava/io/PrintStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 281
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    .end local v3           #ps:Ljava/io/PrintStream;
    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v3       #ps:Ljava/io/PrintStream;
    goto :goto_0

    .line 282
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #ps:Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, v4

    .line 284
    goto :goto_0

    .line 285
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v3, v4

    .line 287
    goto :goto_0
.end method

.method private getFormat(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->TEXT_FORMAT:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public exportToText()I
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 203
    #calls: Lcom/miui/notes/tool/BackupUtils;->externalStorageAvailable()Z
    invoke-static {}, Lcom/miui/notes/tool/BackupUtils;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "BackupUtils"

    const-string v1, "Media was not mounted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 263
    :goto_0
    return v0

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/tool/BackupUtils$TextExport;->getExportToTextPrintStream()Ljava/io/PrintStream;

    move-result-object v11

    .line 209
    .local v11, ps:Ljava/io/PrintStream;
    if-nez v11, :cond_1

    .line 210
    const-string v0, "BackupUtils"

    const-string v1, "get print stream error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x3

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/tool/BackupUtils$TextExport;->NOTE_PROJECTION:[Ljava/lang/String;

    const-string v3, "(type=1 AND parent_id<>-3) OR _id=-2"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, folderCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    :cond_2
    const-string v8, ""

    .line 226
    .local v8, folderName:Ljava/lang/String;
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 231
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    invoke-direct {p0, v12}, Lcom/miui/notes/tool/BackupUtils$TextExport;->getFormat(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    :cond_3
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, folderId:Ljava/lang/String;
    invoke-direct {p0, v7, v11}, Lcom/miui/notes/tool/BackupUtils$TextExport;->exportFolderToText(Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    .end local v7           #folderId:Ljava/lang/String;
    .end local v8           #folderName:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/tool/BackupUtils$TextExport;->NOTE_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=0 AND parent_id=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 248
    .local v9, noteCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_8

    .line 249
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    :cond_6
    invoke-direct {p0, v13}, Lcom/miui/notes/tool/BackupUtils$TextExport;->getFormat(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/notes/tool/BackupUtils$TextExport;->mContext:Landroid/content/Context;

    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, noteId:Ljava/lang/String;
    invoke-direct {p0, v10, v11}, Lcom/miui/notes/tool/BackupUtils$TextExport;->exportNoteToText(Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 257
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 259
    .end local v10           #noteId:Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_8
    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    .line 263
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 229
    .end local v9           #noteCursor:Landroid/database/Cursor;
    .restart local v8       #folderName:Ljava/lang/String;
    :cond_9
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method
