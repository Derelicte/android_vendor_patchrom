.class public Lcom/miui/notes/gtask/data/Task;
.super Lcom/miui/notes/gtask/data/Node;
.source "Task.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCompleted:Z

.field private mMetaInfo:Lorg/json/JSONObject;

.field private mNotes:Ljava/lang/String;

.field private mParent:Lcom/miui/notes/gtask/data/TaskList;

.field private mPriorSibling:Lcom/miui/notes/gtask/data/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/miui/notes/gtask/data/Task;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/miui/notes/gtask/data/Node;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/notes/gtask/data/Task;->mCompleted:Z

    .line 35
    iput-object v1, p0, Lcom/miui/notes/gtask/data/Task;->mNotes:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/miui/notes/gtask/data/Task;->mPriorSibling:Lcom/miui/notes/gtask/data/Task;

    .line 37
    iput-object v1, p0, Lcom/miui/notes/gtask/data/Task;->mParent:Lcom/miui/notes/gtask/data/TaskList;

    .line 38
    iput-object v1, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    .line 39
    return-void
.end method


# virtual methods
.method public getCreateAction(I)Lorg/json/JSONObject;
    .locals 5
    .parameter "actionId"

    .prologue
    .line 42
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v2, js:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action_type"

    const-string v4, "create"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "action_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v3, "index"

    iget-object v4, p0, Lcom/miui/notes/gtask/data/Task;->mParent:Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v4, p0}, Lcom/miui/notes/gtask/data/TaskList;->getChildTaskIndex(Lcom/miui/notes/gtask/data/Task;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v1, entity:Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v3, "creator_id"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v3, "entity_type"

    const-string v4, "TASK"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getNotes()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    const-string v3, "notes"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getNotes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_0
    const-string v3, "entity_delta"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v3, "parent_id"

    iget-object v4, p0, Lcom/miui/notes/gtask/data/Task;->mParent:Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v4}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v3, "dest_parent_type"

    const-string v4, "GROUP"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v3, "list_id"

    iget-object v4, p0, Lcom/miui/notes/gtask/data/Task;->mParent:Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v4}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v3, p0, Lcom/miui/notes/gtask/data/Task;->mPriorSibling:Lcom/miui/notes/gtask/data/Task;

    if-eqz v3, :cond_1

    .line 78
    const-string v3, "prior_sibling_id"

    iget-object v4, p0, Lcom/miui/notes/gtask/data/Task;->mPriorSibling:Lcom/miui/notes/gtask/data/Task;

    invoke-virtual {v4}, Lcom/miui/notes/gtask/data/Task;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    return-object v2

    .line 81
    .end local v1           #entity:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    new-instance v3, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v4, "fail to generate task-create jsonobject"

    invoke-direct {v3, v4}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getLocalJSONFromContent()Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getName()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, name:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    if-nez v8, :cond_1

    .line 196
    if-nez v5, :cond_0

    .line 197
    sget-object v8, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    const-string v9, "the note seems to be an empty one"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 230
    :goto_0
    return-object v4

    .line 201
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 202
    .local v4, js:Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 203
    .local v6, note:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 204
    .local v1, dataArray:Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    .local v0, data:Lorg/json/JSONObject;
    const-string v8, "content"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 207
    const-string v8, "meta_data"

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v8, "type"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    const-string v8, "meta_note"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v1           #dataArray:Lorg/json/JSONArray;
    .end local v4           #js:Lorg/json/JSONObject;
    .end local v6           #note:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 228
    .local v2, e:Lorg/json/JSONException;
    sget-object v8, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v7

    .line 230
    goto :goto_0

    .line 213
    .end local v2           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    const-string v9, "meta_note"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 214
    .restart local v6       #note:Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    const-string v9, "meta_data"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 216
    .restart local v1       #dataArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 217
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 218
    .restart local v0       #data:Lorg/json/JSONObject;
    const-string v8, "mime_type"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "vnd.android.cursor.item/text_note"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 219
    const-string v8, "content"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    .end local v0           #data:Lorg/json/JSONObject;
    :cond_2
    const-string v8, "type"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    iget-object v4, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 216
    .restart local v0       #data:Lorg/json/JSONObject;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/miui/notes/gtask/data/Task;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/miui/notes/gtask/data/TaskList;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/miui/notes/gtask/data/Task;->mParent:Lcom/miui/notes/gtask/data/TaskList;

    return-object v0
.end method

.method public getPriorSibling()Lcom/miui/notes/gtask/data/Task;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/notes/gtask/data/Task;->mPriorSibling:Lcom/miui/notes/gtask/data/Task;

    return-object v0
.end method

.method public getSyncAction(Landroid/database/Cursor;)I
    .locals 10
    .parameter "c"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, noteInfo:Lorg/json/JSONObject;
    :try_start_0
    iget-object v6, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    const-string v7, "meta_note"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    iget-object v6, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    const-string v7, "meta_note"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 252
    :cond_0
    if-nez v1, :cond_2

    .line 253
    sget-object v3, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    const-string v4, "it seems that note meta has been deleted"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    :goto_0
    return v2

    .line 257
    :cond_2
    const-string v6, "_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 258
    sget-object v2, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    const-string v4, "remote note id seems to be deleted"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 259
    goto :goto_0

    .line 263
    :cond_3
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "_id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 264
    sget-object v2, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    const-string v4, "note id doesn\'t match"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 265
    goto :goto_0

    .line 268
    :cond_4
    const/16 v6, 0xd

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_6

    .line 270
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getLastModified()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    move v2, v4

    .line 272
    goto :goto_0

    :cond_5
    move v2, v3

    .line 275
    goto :goto_0

    .line 279
    :cond_6
    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 280
    sget-object v2, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    const-string v3, "gtask id doesn\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 281
    goto :goto_0

    .line 283
    :cond_7
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getLastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 287
    const/4 v2, 0x7

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v5

    .line 295
    goto :goto_0
.end method

.method public getUpdateAction(I)Lorg/json/JSONObject;
    .locals 5
    .parameter "actionId"

    .prologue
    .line 91
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v2, js:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action_type"

    const-string v4, "update"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v3, "action_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v1, entity:Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getNotes()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "notes"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getNotes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_0
    const-string v3, "deleted"

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getDeleted()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 111
    const-string v3, "entity_delta"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-object v2

    .line 113
    .end local v1           #entity:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    new-instance v3, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v4, "fail to generate task-update jsonobject"

    invoke-direct {v3, v4}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public isWorthSaving()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getNotes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/notes/gtask/data/Task;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompleted(Z)V
    .locals 0
    .parameter "completed"

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/miui/notes/gtask/data/Task;->mCompleted:Z

    .line 305
    return-void
.end method

.method public setContentByLocalJSON(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "js"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    const-string v5, "meta_note"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "meta_data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    :cond_0
    sget-object v5, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    const-string v6, "setContentByLocalJSON: nothing is avaiable"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    :try_start_0
    const-string v5, "meta_note"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 170
    .local v4, note:Lorg/json/JSONObject;
    const-string v5, "meta_data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 172
    .local v1, dataArray:Lorg/json/JSONArray;
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    sget-object v5, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    const-string v6, "invalid type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v1           #dataArray:Lorg/json/JSONArray;
    .end local v4           #note:Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 177
    .restart local v1       #dataArray:Lorg/json/JSONArray;
    .restart local v4       #note:Lorg/json/JSONObject;
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 178
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    .local v0, data:Lorg/json/JSONObject;
    const-string v5, "mime_type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/text_note"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    const-string v5, "content"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/notes/gtask/data/Task;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v1           #dataArray:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #note:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 186
    .local v2, e:Lorg/json/JSONException;
    sget-object v5, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #data:Lorg/json/JSONObject;
    .restart local v1       #dataArray:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #note:Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public setContentByRemoteJSON(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "js"

    .prologue
    .line 123
    if-eqz p1, :cond_5

    .line 126
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/Task;->setGid(Ljava/lang/String;)V

    .line 131
    :cond_0
    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/notes/gtask/data/Task;->setLastModified(J)V

    .line 136
    :cond_1
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/Task;->setName(Ljava/lang/String;)V

    .line 141
    :cond_2
    const-string v1, "notes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    const-string v1, "notes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/Task;->setNotes(Ljava/lang/String;)V

    .line 146
    :cond_3
    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/Task;->setDeleted(Z)V

    .line 151
    :cond_4
    const-string v1, "completed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 152
    const-string v1, "completed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/gtask/data/Task;->setCompleted(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_5
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Lorg/json/JSONException;
    sget-object v1, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 157
    new-instance v1, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v2, "fail to get task content from jsonobject"

    invoke-direct {v1, v2}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMetaInfo(Lcom/miui/notes/gtask/data/MetaData;)V
    .locals 3
    .parameter "metaData"

    .prologue
    .line 235
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/notes/gtask/data/MetaData;->getNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/miui/notes/gtask/data/MetaData;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Lorg/json/JSONException;
    sget-object v1, Lcom/miui/notes/gtask/data/Task;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/notes/gtask/data/Task;->mMetaInfo:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .parameter "notes"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/miui/notes/gtask/data/Task;->mNotes:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setParent(Lcom/miui/notes/gtask/data/TaskList;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/miui/notes/gtask/data/Task;->mParent:Lcom/miui/notes/gtask/data/TaskList;

    .line 317
    return-void
.end method

.method public setPriorSibling(Lcom/miui/notes/gtask/data/Task;)V
    .locals 0
    .parameter "priorSibling"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/miui/notes/gtask/data/Task;->mPriorSibling:Lcom/miui/notes/gtask/data/Task;

    .line 313
    return-void
.end method
