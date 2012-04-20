.class public Lcom/miui/notes/gtask/data/SqlNote;
.super Ljava/lang/Object;
.source "SqlNote.java"


# static fields
.field public static final PROJECTION_NOTE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDate:J

.field private mBgColorId:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCreatedDate:J

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/notes/gtask/data/SqlData;",
            ">;"
        }
    .end annotation
.end field

.field private mDiffNoteValues:Landroid/content/ContentValues;

.field private mGtaskId:Ljava/lang/String;

.field private mHasAttachment:I

.field private mId:J

.field private mIsCreate:Z

.field private mLocalModified:I

.field private mModifiedDate:J

.field private mNotesCount:J

.field private mOriginParent:J

.field private mParentId:J

.field private mSnippet:Ljava/lang/String;

.field private mSyncId:J

.field private mType:I

.field private mVersion:J

.field private mWidgetId:I

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/miui/notes/gtask/data/SqlNote;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    .line 30
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alert_date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bg_color_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "modified_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notes_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "parent_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "widget_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "widget_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "local_modified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "origin_parent_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "gtask_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/notes/gtask/data/SqlNote;->PROJECTION_NOTE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContentResolver:Landroid/content/ContentResolver;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    .line 121
    const-wide/32 v0, -0x1869f

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    .line 122
    iput-wide v2, p0, Lcom/miui/notes/gtask/data/SqlNote;->mAlertDate:J

    .line 123
    invoke-static {p1}, Lcom/miui/notes/tool/ResourceParser;->getDefaultBgId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mBgColorId:I

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mCreatedDate:J

    .line 125
    iput v4, p0, Lcom/miui/notes/gtask/data/SqlNote;->mHasAttachment:I

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mModifiedDate:J

    .line 127
    iput-wide v2, p0, Lcom/miui/notes/gtask/data/SqlNote;->mNotesCount:J

    .line 128
    iput-wide v2, p0, Lcom/miui/notes/gtask/data/SqlNote;->mParentId:J

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    .line 130
    iput v4, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    .line 131
    iput v4, p0, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetId:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetType:I

    .line 133
    iput-wide v2, p0, Lcom/miui/notes/gtask/data/SqlNote;->mOriginParent:J

    .line 134
    iput-wide v2, p0, Lcom/miui/notes/gtask/data/SqlNote;->mSyncId:J

    .line 135
    iput v4, p0, Lcom/miui/notes/gtask/data/SqlNote;->mLocalModified:I

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mGtaskId:Ljava/lang/String;

    .line 137
    iput-wide v2, p0, Lcom/miui/notes/gtask/data/SqlNote;->mVersion:J

    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContentResolver:Landroid/content/ContentResolver;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    .line 157
    invoke-direct {p0, p2, p3}, Lcom/miui/notes/gtask/data/SqlNote;->loadFromCursor(J)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    .line 159
    iget v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/miui/notes/gtask/data/SqlNote;->loadDataContent()V

    .line 161
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContentResolver:Landroid/content/ContentResolver;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    .line 146
    invoke-direct {p0, p2}, Lcom/miui/notes/gtask/data/SqlNote;->loadFromCursor(Landroid/database/Cursor;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    .line 148
    iget v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/miui/notes/gtask/data/SqlNote;->loadDataContent()V

    .line 150
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    .line 151
    return-void
.end method

.method private loadDataContent()V
    .locals 10

    .prologue
    .line 204
    const/4 v6, 0x0

    .line 205
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/gtask/data/SqlData;->PROJECTION_DATA:[Ljava/lang/String;

    const-string v3, "(note_id=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 211
    if-eqz v6, :cond_3

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    sget-object v0, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    const-string v1, "it seems that the note has not data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v6, :cond_0

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    new-instance v7, Lcom/miui/notes/gtask/data/SqlData;

    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v6}, Lcom/miui/notes/gtask/data/SqlData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 218
    .local v7, data:Lcom/miui/notes/gtask/data/SqlData;
    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 224
    .end local v7           #data:Lcom/miui/notes/gtask/data/SqlData;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 221
    :cond_3
    :try_start_2
    sget-object v0, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    const-string v1, "loadDataContent: cursor = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :cond_4
    if-eqz v6, :cond_0

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private loadFromCursor(J)V
    .locals 8
    .parameter "id"

    .prologue
    .line 166
    const/4 v6, 0x0

    .line 168
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/gtask/data/SqlNote;->PROJECTION_NOTE:[Ljava/lang/String;

    const-string v3, "(_id=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    if-eqz v6, :cond_1

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 174
    invoke-direct {p0, v6}, Lcom/miui/notes/gtask/data/SqlNote;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    if-eqz v6, :cond_0

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_0
    return-void

    .line 176
    :cond_1
    :try_start_1
    sget-object v0, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    const-string v1, "loadFromCursor: cursor = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    .line 186
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mAlertDate:J

    .line 187
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mBgColorId:I

    .line 188
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mCreatedDate:J

    .line 189
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mHasAttachment:I

    .line 190
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mModifiedDate:J

    .line 191
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mNotesCount:J

    .line 192
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mParentId:J

    .line 193
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    .line 194
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    .line 195
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetId:I

    .line 196
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetType:I

    .line 197
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mSyncId:J

    .line 198
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mLocalModified:I

    .line 199
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mGtaskId:Ljava/lang/String;

    .line 200
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mVersion:J

    .line 201
    return-void
.end method


# virtual methods
.method public commit(Z)V
    .locals 14
    .parameter "validateVersion"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 447
    iget-boolean v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    if-eqz v1, :cond_2

    .line 448
    iget-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    const-wide/32 v4, -0x1869f

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 454
    .local v13, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v13}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    iget-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    .line 460
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Create thread id failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :catch_0
    move-exception v10

    .line 456
    .local v10, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get note id error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v1, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v2, "create note failed"

    invoke-direct {v1, v2}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :cond_1
    iget v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    if-nez v1, :cond_6

    .line 464
    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/gtask/data/SqlData;

    .line 465
    .local v0, sqlData:Lcom/miui/notes/gtask/data/SqlData;
    iget-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/notes/gtask/data/SqlData;->commit(JZJ)V

    goto :goto_0

    .line 469
    .end local v0           #sqlData:Lcom/miui/notes/gtask/data/SqlData;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_2
    iget-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    cmp-long v1, v1, v6

    if-gtz v1, :cond_3

    iget-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    const-wide/16 v4, -0x2

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    .line 470
    sget-object v1, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    const-string v2, "No such note"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Try to update note with invalid id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    :cond_3
    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 474
    iget-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mVersion:J

    .line 475
    const/4 v12, 0x0

    .line 476
    .local v12, result:I
    if-nez p1, :cond_5

    .line 477
    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    const-string v5, "(_id=?)"

    new-array v6, v9, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 488
    :goto_1
    if-nez v12, :cond_4

    .line 489
    sget-object v1, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    const-string v2, "there is no update. maybe user updates note when syncing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v12           #result:I
    :cond_4
    iget v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    if-nez v1, :cond_6

    .line 494
    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/gtask/data/SqlData;

    .line 495
    .restart local v0       #sqlData:Lcom/miui/notes/gtask/data/SqlData;
    iget-wide v5, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    iget-wide v8, p0, Lcom/miui/notes/gtask/data/SqlNote;->mVersion:J

    move-object v4, v0

    move v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/miui/notes/gtask/data/SqlData;->commit(JZJ)V

    goto :goto_2

    .line 482
    .end local v0           #sqlData:Lcom/miui/notes/gtask/data/SqlData;
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v12       #result:I
    :cond_5
    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    const-string v5, "(_id=?) AND (version<=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-wide v7, p0, Lcom/miui/notes/gtask/data/SqlNote;->mVersion:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 501
    .end local v12           #result:I
    :cond_6
    iget-wide v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    invoke-direct {p0, v1, v2}, Lcom/miui/notes/gtask/data/SqlNote;->loadFromCursor(J)V

    .line 502
    iget v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    if-nez v1, :cond_7

    .line 503
    invoke-direct {p0}, Lcom/miui/notes/gtask/data/SqlNote;->loadDataContent()V

    .line 505
    :cond_7
    iget-object v1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 506
    iput-boolean v3, p0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    .line 507
    return-void
.end method

.method public getContent()Lorg/json/JSONObject;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 364
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v4, js:Lorg/json/JSONObject;
    iget-boolean v8, p0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    if-eqz v8, :cond_1

    .line 367
    sget-object v8, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    const-string v9, "it seems that we haven\'t created this in database yet"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 407
    .end local v4           #js:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v4

    .line 371
    .restart local v4       #js:Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 372
    .local v5, note:Lorg/json/JSONObject;
    iget v8, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    if-nez v8, :cond_4

    .line 373
    const-string v8, "_id"

    iget-wide v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 374
    const-string v8, "alert_date"

    iget-wide v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mAlertDate:J

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 375
    const-string v8, "bg_color_id"

    iget v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mBgColorId:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    const-string v8, "created_date"

    iget-wide v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mCreatedDate:J

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 377
    const-string v8, "has_attachment"

    iget v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mHasAttachment:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 378
    const-string v8, "modified_date"

    iget-wide v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mModifiedDate:J

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 379
    const-string v8, "parent_id"

    iget-wide v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mParentId:J

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 380
    const-string v8, "snippet"

    iget-object v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    const-string v8, "type"

    iget v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    const-string v8, "widget_id"

    iget v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetId:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 383
    const-string v8, "widget_type"

    iget v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetType:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    const-string v8, "origin_parent_id"

    iget-wide v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mOriginParent:J

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 385
    const-string v8, "meta_note"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 388
    .local v1, dataArray:Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/notes/gtask/data/SqlData;

    .line 389
    .local v6, sqlData:Lcom/miui/notes/gtask/data/SqlData;
    invoke-virtual {v6}, Lcom/miui/notes/gtask/data/SqlData;->getContent()Lorg/json/JSONObject;

    move-result-object v0

    .line 390
    .local v0, data:Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 403
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v1           #dataArray:Lorg/json/JSONArray;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #js:Lorg/json/JSONObject;
    .end local v5           #note:Lorg/json/JSONObject;
    .end local v6           #sqlData:Lcom/miui/notes/gtask/data/SqlData;
    :catch_0
    move-exception v2

    .line 404
    .local v2, e:Lorg/json/JSONException;
    sget-object v8, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v7

    .line 407
    goto/16 :goto_0

    .line 394
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #dataArray:Lorg/json/JSONArray;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #js:Lorg/json/JSONObject;
    .restart local v5       #note:Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string v8, "meta_data"

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 395
    .end local v1           #dataArray:Lorg/json/JSONArray;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    iget v8, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    iget v8, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 396
    :cond_5
    const-string v8, "_id"

    iget-wide v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 397
    const-string v8, "type"

    iget v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 398
    const-string v8, "snippet"

    iget-object v9, p0, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v8, "meta_note"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    return-wide v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 435
    iget-wide v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mParentId:J

    return-wide v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public isNoteType()Z
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetLocalModified()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    iput v2, p0, Lcom/miui/notes/gtask/data/SqlNote;->mLocalModified:I

    .line 427
    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    const-string v1, "local_modified"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    return-void
.end method

.method public setContent(Lorg/json/JSONObject;)Z
    .locals 34
    .parameter "js"

    .prologue
    .line 231
    :try_start_0
    const-string v31, "meta_note"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 232
    .local v20, note:Lorg/json/JSONObject;
    const-string v31, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 233
    sget-object v31, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    const-string v32, "cannot set system folder"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    :goto_0
    const/16 v31, 0x1

    .end local v20           #note:Lorg/json/JSONObject;
    :goto_1
    return v31

    .line 234
    .restart local v20       #note:Lorg/json/JSONObject;
    :cond_1
    const-string v31, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 236
    const-string v31, "snippet"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    const-string v31, "snippet"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 238
    .local v25, snippet:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 239
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "snippet"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    .line 243
    const-string v31, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    const-string v31, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 245
    .local v28, type:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 246
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "type"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    :cond_5
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/notes/gtask/data/SqlNote;->mType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 354
    .end local v20           #note:Lorg/json/JSONObject;
    .end local v25           #snippet:Ljava/lang/String;
    .end local v28           #type:I
    :catch_0
    move-exception v12

    .line 355
    .local v12, e:Lorg/json/JSONException;
    sget-object v31, Lcom/miui/notes/gtask/data/SqlNote;->TAG:Ljava/lang/String;

    invoke-virtual {v12}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 357
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 236
    .end local v12           #e:Lorg/json/JSONException;
    .restart local v20       #note:Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    const-string v25, ""

    goto/16 :goto_2

    .line 243
    .restart local v25       #snippet:Ljava/lang/String;
    :cond_7
    const/16 v28, 0x0

    goto :goto_3

    .line 249
    .end local v25           #snippet:Ljava/lang/String;
    :cond_8
    const-string v31, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    if-nez v31, :cond_0

    .line 250
    const-string v31, "meta_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 251
    .local v9, dataArray:Lorg/json/JSONArray;
    const-string v31, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_22

    const-string v31, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 252
    .local v16, id:J
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    move-wide/from16 v31, v0

    cmp-long v31, v31, v16

    if-eqz v31, :cond_a

    .line 253
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    :cond_a
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/notes/gtask/data/SqlNote;->mId:J

    .line 257
    const-string v31, "alert_date"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_23

    const-string v31, "alert_date"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 259
    .local v3, alertDate:J
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mAlertDate:J

    move-wide/from16 v31, v0

    cmp-long v31, v31, v3

    if-eqz v31, :cond_c

    .line 260
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "alert_date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 262
    :cond_c
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/miui/notes/gtask/data/SqlNote;->mAlertDate:J

    .line 264
    const-string v31, "bg_color_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_24

    const-string v31, "bg_color_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 266
    .local v5, bgColorId:I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mBgColorId:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v5, :cond_e

    .line 267
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "bg_color_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    :cond_e
    move-object/from16 v0, p0

    iput v5, v0, Lcom/miui/notes/gtask/data/SqlNote;->mBgColorId:I

    .line 271
    const-string v31, "created_date"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_25

    const-string v31, "created_date"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 273
    .local v6, createDate:J
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mCreatedDate:J

    move-wide/from16 v31, v0

    cmp-long v31, v31, v6

    if-eqz v31, :cond_10

    .line 274
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "created_date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    :cond_10
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/miui/notes/gtask/data/SqlNote;->mCreatedDate:J

    .line 278
    const-string v31, "has_attachment"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_26

    const-string v31, "has_attachment"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 280
    .local v13, hasAttachment:I
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mHasAttachment:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v13, :cond_12

    .line 281
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "has_attachment"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    :cond_12
    move-object/from16 v0, p0

    iput v13, v0, Lcom/miui/notes/gtask/data/SqlNote;->mHasAttachment:I

    .line 285
    const-string v31, "modified_date"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_27

    const-string v31, "modified_date"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 287
    .local v18, modifiedDate:J
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mModifiedDate:J

    move-wide/from16 v31, v0

    cmp-long v31, v31, v18

    if-eqz v31, :cond_14

    .line 288
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "modified_date"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    :cond_14
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/notes/gtask/data/SqlNote;->mModifiedDate:J

    .line 292
    const-string v31, "parent_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_28

    const-string v31, "parent_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 294
    .local v23, parentId:J
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mParentId:J

    move-wide/from16 v31, v0

    cmp-long v31, v31, v23

    if-eqz v31, :cond_16

    .line 295
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "parent_id"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    :cond_16
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/notes/gtask/data/SqlNote;->mParentId:J

    .line 299
    const-string v31, "snippet"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_29

    const-string v31, "snippet"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 301
    .restart local v25       #snippet:Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_18

    .line 302
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "snippet"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_18
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/notes/gtask/data/SqlNote;->mSnippet:Ljava/lang/String;

    .line 306
    const-string v31, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2a

    const-string v31, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 308
    .restart local v28       #type:I
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    .line 309
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "type"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    :cond_1a
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/notes/gtask/data/SqlNote;->mType:I

    .line 313
    const-string v31, "widget_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2b

    const-string v31, "widget_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 315
    .local v29, widgetId:I
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetId:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v29

    if-eq v0, v1, :cond_1c

    .line 316
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "widget_id"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    :cond_1c
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetId:I

    .line 320
    const-string v31, "widget_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2c

    const-string v31, "widget_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 322
    .local v30, widgetType:I
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetType:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v30

    if-eq v0, v1, :cond_1e

    .line 323
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "widget_type"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    :cond_1e
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/notes/gtask/data/SqlNote;->mWidgetType:I

    .line 327
    const-string v31, "origin_parent_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2d

    const-string v31, "origin_parent_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 329
    .local v21, originParent:J
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mIsCreate:Z

    move/from16 v31, v0

    if-nez v31, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mOriginParent:J

    move-wide/from16 v31, v0

    cmp-long v31, v31, v21

    if-eqz v31, :cond_20

    .line 330
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    move-object/from16 v31, v0

    const-string v32, "origin_parent_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    :cond_20
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/notes/gtask/data/SqlNote;->mOriginParent:J

    .line 334
    const/4 v14, 0x0

    .local v14, i:I
    :goto_10
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_0

    .line 335
    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 336
    .local v8, data:Lorg/json/JSONObject;
    const/16 v26, 0x0

    .line 337
    .local v26, sqlData:Lcom/miui/notes/gtask/data/SqlData;
    const-string v31, "_id"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2e

    .line 338
    const-string v31, "_id"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 339
    .local v10, dataId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_21
    :goto_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/miui/notes/gtask/data/SqlData;

    .line 340
    .local v27, temp:Lcom/miui/notes/gtask/data/SqlData;
    invoke-virtual/range {v27 .. v27}, Lcom/miui/notes/gtask/data/SqlData;->getId()J

    move-result-wide v31

    cmp-long v31, v10, v31

    if-nez v31, :cond_21

    .line 341
    move-object/from16 v26, v27

    goto :goto_11

    .line 251
    .end local v3           #alertDate:J
    .end local v5           #bgColorId:I
    .end local v6           #createDate:J
    .end local v8           #data:Lorg/json/JSONObject;
    .end local v10           #dataId:J
    .end local v13           #hasAttachment:I
    .end local v14           #i:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v18           #modifiedDate:J
    .end local v21           #originParent:J
    .end local v23           #parentId:J
    .end local v25           #snippet:Ljava/lang/String;
    .end local v26           #sqlData:Lcom/miui/notes/gtask/data/SqlData;
    .end local v27           #temp:Lcom/miui/notes/gtask/data/SqlData;
    .end local v28           #type:I
    .end local v29           #widgetId:I
    .end local v30           #widgetType:I
    :cond_22
    const-wide/32 v16, -0x1869f

    goto/16 :goto_4

    .line 257
    .restart local v16       #id:J
    :cond_23
    const-wide/16 v3, 0x0

    goto/16 :goto_5

    .line 264
    .restart local v3       #alertDate:J
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/miui/notes/tool/ResourceParser;->getDefaultBgId(Landroid/content/Context;)I

    move-result v5

    goto/16 :goto_6

    .line 271
    .restart local v5       #bgColorId:I
    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto/16 :goto_7

    .line 278
    .restart local v6       #createDate:J
    :cond_26
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 285
    .restart local v13       #hasAttachment:I
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    goto/16 :goto_9

    .line 292
    .restart local v18       #modifiedDate:J
    :cond_28
    const-wide/16 v23, 0x0

    goto/16 :goto_a

    .line 299
    .restart local v23       #parentId:J
    :cond_29
    const-string v25, ""

    goto/16 :goto_b

    .line 306
    .restart local v25       #snippet:Ljava/lang/String;
    :cond_2a
    const/16 v28, 0x0

    goto/16 :goto_c

    .line 313
    .restart local v28       #type:I
    :cond_2b
    const/16 v29, 0x0

    goto/16 :goto_d

    .line 320
    .restart local v29       #widgetId:I
    :cond_2c
    const/16 v30, -0x1

    goto/16 :goto_e

    .line 327
    .restart local v30       #widgetType:I
    :cond_2d
    const-wide/16 v21, 0x0

    goto/16 :goto_f

    .line 346
    .restart local v8       #data:Lorg/json/JSONObject;
    .restart local v14       #i:I
    .restart local v21       #originParent:J
    .restart local v26       #sqlData:Lcom/miui/notes/gtask/data/SqlData;
    :cond_2e
    if-nez v26, :cond_2f

    .line 347
    new-instance v26, Lcom/miui/notes/gtask/data/SqlData;

    .end local v26           #sqlData:Lcom/miui/notes/gtask/data/SqlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/notes/gtask/data/SqlData;-><init>(Landroid/content/Context;)V

    .line 348
    .restart local v26       #sqlData:Lcom/miui/notes/gtask/data/SqlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/data/SqlNote;->mDataList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_2f
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/miui/notes/gtask/data/SqlData;->setContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_10
.end method

.method public setGtaskId(Ljava/lang/String;)V
    .locals 2
    .parameter "gid"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mGtaskId:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    const-string v1, "gtask_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public setParentId(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 411
    iput-wide p1, p0, Lcom/miui/notes/gtask/data/SqlNote;->mParentId:J

    .line 412
    iget-object v0, p0, Lcom/miui/notes/gtask/data/SqlNote;->mDiffNoteValues:Landroid/content/ContentValues;

    const-string v1, "parent_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    return-void
.end method
