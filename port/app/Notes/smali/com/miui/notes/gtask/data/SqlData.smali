.class public Lcom/miui/notes/gtask/data/SqlData;
.super Ljava/lang/Object;
.source "SqlData.java"


# static fields
.field public static final PROJECTION_DATA:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataContent:Ljava/lang/String;

.field private mDataContentData1:J

.field private mDataContentData3:Ljava/lang/String;

.field private mDataId:J

.field private mDataMimeType:Ljava/lang/String;

.field private mDiffDataValues:Landroid/content/ContentValues;

.field private mIsCreate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/miui/notes/gtask/data/SqlData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/gtask/data/SqlData;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/notes/gtask/data/SqlData;->PROJECTION_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    .line 61
    const-wide/32 v0, -0x1869f

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    .line 62
    const-string v0, "vnd.android.cursor.item/text_note"

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataMimeType:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContent:Ljava/lang/String;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData1:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData3:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    .line 72
    invoke-direct {p0, p2}, Lcom/miui/notes/gtask/data/SqlData;->loadFromCursor(Landroid/database/Cursor;)V

    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    .line 74
    return-void
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    .line 78
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataMimeType:Ljava/lang/String;

    .line 79
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContent:Ljava/lang/String;

    .line 80
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData1:J

    .line 81
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData3:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public commit(JZJ)V
    .locals 10
    .parameter "noteId"
    .parameter "validateVersion"
    .parameter "version"

    .prologue
    .line 133
    iget-boolean v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    if-eqz v3, :cond_2

    .line 134
    iget-wide v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    const-wide/32 v5, -0x1869f

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v4, "note_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    iget-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 141
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 167
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    .line 168
    return-void

    .line 142
    .restart local v2       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/miui/notes/gtask/data/SqlData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get note id error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v3, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v4, "create note failed"

    invoke-direct {v3, v4}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, result:I
    if-nez p3, :cond_3

    .line 150
    iget-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 160
    :goto_1
    if-nez v1, :cond_1

    .line 161
    sget-object v3, Lcom/miui/notes/gtask/data/SqlData;->TAG:Ljava/lang/String;

    const-string v4, "there is no update. maybe user updates note when syncing"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_3
    iget-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v6, " ? in (SELECT _id FROM note WHERE version=?)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public getContent()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 118
    iget-boolean v1, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/miui/notes/gtask/data/SqlData;->TAG:Ljava/lang/String;

    const-string v2, "it seems that we haven\'t created this in database yet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v0, js:Lorg/json/JSONObject;
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "content"

    iget-object v2, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v1, "data1"

    iget-wide v2, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData1:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 127
    const-string v1, "data3"

    iget-object v2, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    return-wide v0
.end method

.method public setContent(Lorg/json/JSONObject;)V
    .locals 10
    .parameter "js"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v7, "_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 86
    .local v4, dataId:J
    :goto_0
    iget-boolean v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    if-nez v7, :cond_0

    iget-wide v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    cmp-long v7, v7, v4

    if-eqz v7, :cond_1

    .line 87
    :cond_0
    iget-object v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v8, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    :cond_1
    iput-wide v4, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataId:J

    .line 91
    const-string v7, "mime_type"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "mime_type"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, dataMimeType:Ljava/lang/String;
    :goto_1
    iget-boolean v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 94
    :cond_2
    iget-object v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_3
    iput-object v6, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataMimeType:Ljava/lang/String;

    .line 98
    const-string v7, "content"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "content"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, dataContent:Ljava/lang/String;
    :goto_2
    iget-boolean v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContent:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 100
    :cond_4
    iget-object v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v8, "content"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_5
    iput-object v0, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContent:Ljava/lang/String;

    .line 104
    const-string v7, "data1"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "data1"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 105
    .local v1, dataContentData1:J
    :goto_3
    iget-boolean v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    if-nez v7, :cond_6

    iget-wide v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData1:J

    cmp-long v7, v7, v1

    if-eqz v7, :cond_7

    .line 106
    :cond_6
    iget-object v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v8, "data1"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    :cond_7
    iput-wide v1, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData1:J

    .line 110
    const-string v7, "data3"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "data3"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, dataContentData3:Ljava/lang/String;
    :goto_4
    iget-boolean v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mIsCreate:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData3:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 112
    :cond_8
    iget-object v7, p0, Lcom/miui/notes/gtask/data/SqlData;->mDiffDataValues:Landroid/content/ContentValues;

    const-string v8, "data3"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_9
    iput-object v3, p0, Lcom/miui/notes/gtask/data/SqlData;->mDataContentData3:Ljava/lang/String;

    .line 115
    return-void

    .line 85
    .end local v0           #dataContent:Ljava/lang/String;
    .end local v1           #dataContentData1:J
    .end local v3           #dataContentData3:Ljava/lang/String;
    .end local v4           #dataId:J
    .end local v6           #dataMimeType:Ljava/lang/String;
    :cond_a
    const-wide/32 v4, -0x1869f

    goto/16 :goto_0

    .line 91
    .restart local v4       #dataId:J
    :cond_b
    const-string v6, "vnd.android.cursor.item/text_note"

    goto/16 :goto_1

    .line 98
    .restart local v6       #dataMimeType:Ljava/lang/String;
    :cond_c
    const-string v0, ""

    goto :goto_2

    .line 104
    .restart local v0       #dataContent:Ljava/lang/String;
    :cond_d
    const-wide/16 v1, 0x0

    goto :goto_3

    .line 110
    .restart local v1       #dataContentData1:J
    :cond_e
    const-string v3, ""

    goto :goto_4
.end method
