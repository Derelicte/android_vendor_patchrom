.class public Lcom/miui/milk/storage/BackupDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BackupDatabaseHelper.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 94
    const-string v0, "miui_sync.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 95
    return-void
.end method

.method private upgrade3TO4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 185
    const-string v0, "ALTER TABLE task_detail ADD name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private upgrade4TO5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 190
    const-string v0, "ALTER TABLE task_detail ADD type INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private upgrade5TO6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 195
    const-string v0, "ALTER TABLE task ADD status_code INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v0, "ALTER TABLE task_detail ADD status_code INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private upgrade6TO7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 202
    const-string v0, "CREATE TABLE IF NOT EXISTS notefolder (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    const-string v0, "CREATE TABLE IF NOT EXISTS note (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private upgradeTO7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 126
    const-string v0, "CREATE TABLE IF NOT EXISTS groups (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string v0, "CREATE TABLE IF NOT EXISTS contacts (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v0, "CREATE TABLE IF NOT EXISTS calls (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "CREATE TABLE IF NOT EXISTS sms (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    const-string v0, "CREATE TABLE IF NOT EXISTS smsbookmark (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const-string v0, "CREATE TABLE IF NOT EXISTS notefolder (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    const-string v0, "CREATE TABLE IF NOT EXISTS note (_key INTEGER PRIMARY KEY,_value TEXT, _guid TEXT); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v0, "CREATE TABLE IF NOT EXISTS task (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,type INTEGER DEFAULT 0,date INTEGER DEFAULT 0,max INTEGER DEFAULT 0,current INTEGER DEFAULT 0,description TEXT,capacity INTEGER DEFAULT 0,status_code INTEGER DEFAULT 0,status INTEGER DEFAULT 0); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    const-string v0, "CREATE TABLE IF NOT EXISTS task_detail (_id INTEGER PRIMARY KEY AUTOINCREMENT,task_id INTEGER,name TEXT,title TEXT,type INTEGER DEFAULT 0,date INTEGER DEFAULT 0,status INTEGER DEFAULT 0,status_code INTEGER DEFAULT 0,max INTEGER DEFAULT 0,current INTEGER DEFAULT 0,description TEXT,c_new INTEGER DEFAULT 0,c_update INTEGER DEFAULT 0,c_delete INTEGER DEFAULT 0); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/miui/milk/storage/BackupDatabaseHelper;->upgradeTO7(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v0, 0x3

    .line 104
    if-ge p2, v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/milk/storage/BackupDatabaseHelper;->upgradeTO7(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    :cond_0
    if-ne p2, v0, :cond_1

    .line 108
    invoke-direct {p0, p1}, Lcom/miui/milk/storage/BackupDatabaseHelper;->upgrade3TO4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    add-int/lit8 p2, p2, 0x1

    .line 111
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 112
    invoke-direct {p0, p1}, Lcom/miui/milk/storage/BackupDatabaseHelper;->upgrade4TO5(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    add-int/lit8 p2, p2, 0x1

    .line 115
    :cond_2
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    .line 116
    invoke-direct {p0, p1}, Lcom/miui/milk/storage/BackupDatabaseHelper;->upgrade5TO6(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    add-int/lit8 p2, p2, 0x1

    .line 119
    :cond_3
    const/4 v0, 0x6

    if-ne p2, v0, :cond_4

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/milk/storage/BackupDatabaseHelper;->upgrade6TO7(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    add-int/lit8 p2, p2, 0x1

    .line 123
    :cond_4
    return-void
.end method
