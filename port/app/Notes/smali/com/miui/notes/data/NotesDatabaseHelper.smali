.class public Lcom/miui/notes/data/NotesDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NotesDatabaseHelper.java"


# static fields
.field private static mInstance:Lcom/miui/notes/data/NotesDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 194
    const-string v0, "note.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 195
    return-void
.end method

.method private createSystemFolder(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 223
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v1, "note"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 235
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 236
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v1, "note"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 243
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 244
    const-string v1, "_id"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "note"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 251
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 252
    const-string v1, "_id"

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v1, "note"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 255
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/notes/data/NotesDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 275
    const-class v1, Lcom/miui/notes/data/NotesDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/notes/data/NotesDatabaseHelper;->mInstance:Lcom/miui/notes/data/NotesDatabaseHelper;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/miui/notes/data/NotesDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/miui/notes/data/NotesDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/notes/data/NotesDatabaseHelper;->mInstance:Lcom/miui/notes/data/NotesDatabaseHelper;

    .line 278
    :cond_0
    sget-object v0, Lcom/miui/notes/data/NotesDatabaseHelper;->mInstance:Lcom/miui/notes/data/NotesDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private reCreateDataTableTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 265
    const-string v0, "DROP TRIGGER IF EXISTS update_note_content_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const-string v0, "DROP TRIGGER IF EXISTS update_note_content_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "DROP TRIGGER IF EXISTS update_note_content_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v0, "CREATE TRIGGER update_note_content_on_insert  AFTER INSERT ON data WHEN new.mime_type=\'vnd.android.cursor.item/text_note\' BEGIN  UPDATE note   SET snippet=new.content  WHERE _id=new.note_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    const-string v0, "CREATE TRIGGER update_note_content_on_update  AFTER UPDATE ON data WHEN old.mime_type=\'vnd.android.cursor.item/text_note\' BEGIN  UPDATE note   SET snippet=new.content  WHERE _id=new.note_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const-string v0, "CREATE TRIGGER update_note_content_on_delete  AFTER delete ON data WHEN old.mime_type=\'vnd.android.cursor.item/text_note\' BEGIN  UPDATE note   SET snippet=\'\'  WHERE _id=old.note_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private reCreateNoteTableTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 205
    const-string v0, "DROP TRIGGER IF EXISTS increase_folder_count_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    const-string v0, "DROP TRIGGER IF EXISTS decrease_folder_count_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string v0, "DROP TRIGGER IF EXISTS decrease_folder_count_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    const-string v0, "DROP TRIGGER IF EXISTS delete_data_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    const-string v0, "DROP TRIGGER IF EXISTS increase_folder_count_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    const-string v0, "DROP TRIGGER IF EXISTS folder_delete_notes_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    const-string v0, "DROP TRIGGER IF EXISTS folder_move_notes_on_trash"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    const-string v0, "CREATE TRIGGER increase_folder_count_on_update  AFTER UPDATE OF parent_id ON note BEGIN   UPDATE note   SET notes_count=notes_count + 1  WHERE _id=new.parent_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    const-string v0, "CREATE TRIGGER decrease_folder_count_on_update  AFTER UPDATE OF parent_id ON note BEGIN   UPDATE note   SET notes_count=notes_count-1  WHERE _id=old.parent_id  AND notes_count>0; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    const-string v0, "CREATE TRIGGER decrease_folder_count_on_delete  AFTER DELETE ON note BEGIN   UPDATE note   SET notes_count=notes_count-1  WHERE _id=old.parent_id  AND notes_count>0; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    const-string v0, "CREATE TRIGGER delete_data_on_delete  AFTER DELETE ON note BEGIN  DELETE FROM data   WHERE note_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    const-string v0, "CREATE TRIGGER increase_folder_count_on_insert  AFTER INSERT ON note BEGIN   UPDATE note   SET notes_count=notes_count + 1  WHERE _id=new.parent_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    const-string v0, "CREATE TRIGGER folder_delete_notes_on_delete  AFTER DELETE ON note BEGIN  DELETE FROM note   WHERE parent_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    const-string v0, "CREATE TRIGGER folder_move_notes_on_trash  AFTER UPDATE ON note WHEN new.parent_id=-3 BEGIN  UPDATE note   SET parent_id=-3  WHERE parent_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 321
    const-string v0, "DROP TABLE IF EXISTS note"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    const-string v0, "DROP TABLE IF EXISTS data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->createNoteTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 324
    invoke-virtual {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 325
    return-void
.end method

.method private upgradeToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 329
    const-string v1, "DROP TRIGGER IF EXISTS update_note_modified_date_on_insert"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v1, "DROP TRIGGER IF EXISTS update_note_modified_date_on_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    const-string v1, "DROP TRIGGER IF EXISTS update_note_modified_date_on_update"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    const-string v1, "ALTER TABLE note ADD COLUMN gtask_id TEXT NOT NULL DEFAULT \'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v1, "note"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 340
    return-void
.end method

.method private upgradeToV4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 343
    const-string v0, "ALTER TABLE note ADD COLUMN version INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 345
    return-void
.end method


# virtual methods
.method public createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 258
    const-string v0, "CREATE TABLE data(_id INTEGER PRIMARY KEY,mime_type TEXT NOT NULL,note_id INTEGER NOT NULL DEFAULT 0,created_date INTEGER NOT NULL DEFAULT (strftime(\'%s\',\'now\') * 1000),modified_date INTEGER NOT NULL DEFAULT (strftime(\'%s\',\'now\') * 1000),content TEXT NOT NULL DEFAULT \'\',data1 INTEGER,data2 INTEGER,data3 TEXT NOT NULL DEFAULT \'\',data4 TEXT NOT NULL DEFAULT \'\',data5 TEXT NOT NULL DEFAULT \'\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->reCreateDataTableTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 260
    const-string v0, "CREATE INDEX IF NOT EXISTS note_id_index ON data(note_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    const-string v0, "NotesDatabaseHelper"

    const-string v1, "data table has been created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public createNoteTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 198
    const-string v0, "CREATE TABLE note(_id INTEGER PRIMARY KEY,parent_id INTEGER NOT NULL DEFAULT 0,alert_date INTEGER NOT NULL DEFAULT 0,bg_color_id INTEGER NOT NULL DEFAULT 0,created_date INTEGER NOT NULL DEFAULT (strftime(\'%s\',\'now\') * 1000),has_attachment INTEGER NOT NULL DEFAULT 0,modified_date INTEGER NOT NULL DEFAULT (strftime(\'%s\',\'now\') * 1000),notes_count INTEGER NOT NULL DEFAULT 0,snippet TEXT NOT NULL DEFAULT \'\',type INTEGER NOT NULL DEFAULT 0,widget_id INTEGER NOT NULL DEFAULT 0,widget_type INTEGER NOT NULL DEFAULT -1,sync_id INTEGER NOT NULL DEFAULT 0,local_modified INTEGER NOT NULL DEFAULT 0,origin_parent_id INTEGER NOT NULL DEFAULT 0,gtask_id TEXT NOT NULL DEFAULT \'\',version INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->reCreateNoteTableTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->createSystemFolder(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 201
    const-string v0, "NotesDatabaseHelper"

    const-string v1, "note table has been created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->createNoteTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 285
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, reCreateTriggers:Z
    const/4 v1, 0x0

    .line 292
    .local v1, skipV2:Z
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 294
    const/4 v1, 0x1

    .line 295
    add-int/lit8 p2, p2, 0x1

    .line 298
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    if-nez v1, :cond_1

    .line 299
    invoke-direct {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->upgradeToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 300
    const/4 v0, 0x1

    .line 301
    add-int/lit8 p2, p2, 0x1

    .line 304
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 305
    invoke-direct {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->upgradeToV4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    add-int/lit8 p2, p2, 0x1

    .line 309
    :cond_2
    if-eqz v0, :cond_3

    .line 310
    invoke-direct {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->reCreateNoteTableTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 311
    invoke-direct {p0, p1}, Lcom/miui/notes/data/NotesDatabaseHelper;->reCreateDataTableTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 314
    :cond_3
    if-eq p2, p3, :cond_4

    .line 315
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrade notes database to version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fails"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_4
    return-void
.end method
