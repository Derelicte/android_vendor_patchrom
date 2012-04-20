.class public Lcom/miui/milk/storage/ProgressTrackerStore;
.super Ljava/lang/Object;
.source "ProgressTrackerStore.java"


# instance fields
.field private dbStore:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabaseHelper:Lcom/miui/milk/storage/BackupDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->mDatabaseHelper:Lcom/miui/milk/storage/BackupDatabaseHelper;

    .line 25
    new-instance v0, Lcom/miui/milk/storage/BackupDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/miui/milk/storage/BackupDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->mDatabaseHelper:Lcom/miui/milk/storage/BackupDatabaseHelper;

    .line 27
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 29
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 31
    :cond_0
    return-void
.end method

.method private setTaskDetailField(Lcom/miui/milk/storage/ProgressTaskDetail;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "taskDetaiil"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 256
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->id:J

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string v1, "task_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->taskId:J

    goto :goto_0

    .line 264
    :cond_2
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 265
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->name:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_3
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 268
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->title:Ljava/lang/String;

    goto :goto_0

    .line 270
    :cond_4
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 271
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    goto :goto_0

    .line 273
    :cond_5
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 274
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->date:J

    goto :goto_0

    .line 276
    :cond_6
    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 277
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->status:I

    goto :goto_0

    .line 279
    :cond_7
    const-string v1, "c_new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 280
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    goto :goto_0

    .line 282
    :cond_8
    const-string v1, "c_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 283
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->updateCount:I

    goto/16 :goto_0

    .line 285
    :cond_9
    const-string v1, "c_delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 286
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->deleteCount:I

    goto/16 :goto_0

    .line 288
    :cond_a
    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 289
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->max:I

    goto/16 :goto_0

    .line 291
    :cond_b
    const-string v1, "current"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 292
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->current:I

    goto/16 :goto_0

    .line 294
    :cond_c
    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 295
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->description:Ljava/lang/String;

    goto/16 :goto_0

    .line 297
    :cond_d
    const-string v1, "status_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTaskDetail;->statusCode:I

    goto/16 :goto_0
.end method

.method private setTaskField(Lcom/miui/milk/storage/ProgressTask;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "task"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 95
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/miui/milk/storage/ProgressTask;->id:J

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/milk/storage/ProgressTask;->title:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_2
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTask;->type:I

    goto :goto_0

    .line 106
    :cond_3
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/miui/milk/storage/ProgressTask;->date:J

    goto :goto_0

    .line 109
    :cond_4
    const-string v1, "capacity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/miui/milk/storage/ProgressTask;->capacity:J

    goto :goto_0

    .line 112
    :cond_5
    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTask;->status:I

    goto :goto_0

    .line 115
    :cond_6
    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTask;->max:I

    goto :goto_0

    .line 118
    :cond_7
    const-string v1, "current"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 119
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTask;->current:I

    goto :goto_0

    .line 121
    :cond_8
    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 122
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/milk/storage/ProgressTask;->description:Ljava/lang/String;

    goto/16 :goto_0

    .line 124
    :cond_9
    const-string v1, "status_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/miui/milk/storage/ProgressTask;->statusCode:I

    goto/16 :goto_0
.end method


# virtual methods
.method public addTask(Landroid/content/ContentValues;)J
    .locals 6
    .parameter "cv"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V

    .line 163
    const-string v2, " update task set status = -2 where status = 1"

    .line 166
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "task"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 169
    .local v0, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "ProgressTrackerStore"

    const-string v4, "Insert new task record"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 175
    return-wide v0

    .line 172
    :cond_0
    const-string v3, "ProgressTrackerStore"

    const-string v4, "Error while insert new task record"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addTaskDetail(Landroid/content/ContentValues;)J
    .locals 5
    .parameter "cv"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V

    .line 200
    iget-object v2, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "task_detail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 201
    .local v0, id:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "ProgressTrackerStore"

    const-string v3, "Insert new task detail record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 207
    return-wide v0

    .line 204
    :cond_0
    const-string v2, "ProgressTrackerStore"

    const-string v3, "Error while insert new task detail record"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->reset()V

    .line 319
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "calls"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "note"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notefolder"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "smsbookmark"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    .line 308
    :cond_0
    return-void
.end method

.method public getRunningTask()Lcom/miui/milk/storage/ProgressTask;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    new-instance v13, Lcom/miui/milk/storage/ProgressTask;

    invoke-direct {v13}, Lcom/miui/milk/storage/ProgressTask;-><init>()V

    .line 40
    .local v13, task:Lcom/miui/milk/storage/ProgressTask;
    const/4 v10, 0x0

    .line 42
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "task"

    const/4 v3, 0x0

    const-string v4, "status = 1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 46
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .local v12, index:I
    :goto_0
    if-ltz v12, :cond_2

    .line 48
    invoke-direct {p0, v13, v10, v12}, Lcom/miui/milk/storage/ProgressTrackerStore;->setTaskField(Lcom/miui/milk/storage/ProgressTask;Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 36
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #index:I
    .end local v13           #task:Lcom/miui/milk/storage/ProgressTask;
    :catch_0
    move-exception v11

    .local v11, e:Landroid/database/sqlite/SQLiteException;
    move-object v13, v14

    .line 61
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :goto_1
    return-object v13

    .line 56
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v13       #task:Lcom/miui/milk/storage/ProgressTask;
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    move-object v13, v14

    goto :goto_1

    .line 56
    .restart local v12       #index:I
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    goto :goto_1

    .line 53
    .end local v12           #index:I
    :catch_1
    move-exception v11

    .line 56
    .restart local v11       #e:Landroid/database/sqlite/SQLiteException;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_4
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    move-object v13, v14

    goto :goto_1

    .line 56
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    throw v0
.end method

.method public getTaskById(J)Lcom/miui/milk/storage/ProgressTask;
    .locals 14
    .parameter "taskId"

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    new-instance v13, Lcom/miui/milk/storage/ProgressTask;

    invoke-direct {v13}, Lcom/miui/milk/storage/ProgressTask;-><init>()V

    .line 71
    .local v13, task:Lcom/miui/milk/storage/ProgressTask;
    const/4 v10, 0x0

    .line 73
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "task"

    const/4 v3, 0x0

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 77
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .local v12, index:I
    :goto_0
    if-ltz v12, :cond_2

    .line 79
    invoke-direct {p0, v13, v10, v12}, Lcom/miui/milk/storage/ProgressTrackerStore;->setTaskField(Lcom/miui/milk/storage/ProgressTask;Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 67
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #index:I
    .end local v13           #task:Lcom/miui/milk/storage/ProgressTask;
    :catch_0
    move-exception v11

    .line 68
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const/4 v13, 0x0

    .line 91
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :goto_1
    return-object v13

    .line 82
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v13       #task:Lcom/miui/milk/storage/ProgressTask;
    :cond_0
    const/4 v13, 0x0

    .line 87
    .end local v13           #task:Lcom/miui/milk/storage/ProgressTask;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    goto :goto_1

    .line 87
    .restart local v12       #index:I
    .restart local v13       #task:Lcom/miui/milk/storage/ProgressTask;
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    goto :goto_1

    .line 84
    .end local v12           #index:I
    :catch_1
    move-exception v11

    .line 85
    .restart local v11       #e:Landroid/database/sqlite/SQLiteException;
    const/4 v13, 0x0

    .line 87
    .end local v13           #task:Lcom/miui/milk/storage/ProgressTask;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    goto :goto_1

    .line 87
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v13       #task:Lcom/miui/milk/storage/ProgressTask;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    throw v0
.end method

.method public getTaskDetails(J)Ljava/util/ArrayList;
    .locals 15
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/storage/ProgressTaskDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v13, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v10, 0x0

    .line 229
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "task_detail"

    const/4 v3, 0x0

    const-string v4, "task_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 233
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    new-instance v14, Lcom/miui/milk/storage/ProgressTaskDetail;

    invoke-direct {v14}, Lcom/miui/milk/storage/ProgressTaskDetail;-><init>()V

    .line 236
    .local v14, taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .local v12, index:I
    :goto_1
    if-ltz v12, :cond_0

    .line 237
    invoke-direct {p0, v14, v10, v12}, Lcom/miui/milk/storage/ProgressTrackerStore;->setTaskDetailField(Lcom/miui/milk/storage/ProgressTaskDetail;Landroid/database/Cursor;I)V

    .line 236
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 224
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #index:I
    .end local v14           #taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    :catch_0
    move-exception v11

    .line 225
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const/4 v13, 0x0

    .line 251
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    .end local v13           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    :goto_2
    return-object v13

    .line 239
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v12       #index:I
    .restart local v13       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    .restart local v14       #taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    :cond_0
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 244
    .end local v12           #index:I
    .end local v14           #taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    :catch_1
    move-exception v11

    .line 245
    .restart local v11       #e:Landroid/database/sqlite/SQLiteException;
    const/4 v13, 0x0

    .line 247
    .end local v13           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    goto :goto_2

    .line 247
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v13       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    goto :goto_2

    .line 247
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_4
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    throw v0
.end method

.method public increaseTaskProcessCount(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V

    .line 190
    const-string v0, " update task set current = current + 1  where _id = ? "

    .line 193
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 196
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->mDatabaseHelper:Lcom/miui/milk/storage/BackupDatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BackupDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    .line 330
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V

    .line 312
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "task_detail"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "task"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    const-string v0, "ProgressTrackerStore"

    const-string v1, "reset task db "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public updateTask(JLandroid/content/ContentValues;)V
    .locals 6
    .parameter "id"
    .parameter "cv"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V

    .line 180
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "task"

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 181
    const-string v0, "ProgressTrackerStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update old task. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 186
    return-void

    .line 183
    :cond_0
    const-string v0, "ProgressTrackerStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while update task. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateTaskDetail(JLandroid/content/ContentValues;)V
    .locals 6
    .parameter "id"
    .parameter "cv"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->open()V

    .line 212
    iget-object v0, p0, Lcom/miui/milk/storage/ProgressTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "task_detail"

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 213
    const-string v0, "ProgressTrackerStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update old task detail. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    invoke-virtual {p0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 218
    return-void

    .line 215
    :cond_0
    const-string v0, "ProgressTrackerStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while update task detail. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
