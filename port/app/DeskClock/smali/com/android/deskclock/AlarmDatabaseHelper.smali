.class Lcom/android/deskclock/AlarmDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AlarmDatabaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    const-string v0, "alarms.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    return-void
.end method


# virtual methods
.method commonInsert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "values"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "alarms"

    const-string v4, "message"

    invoke-virtual {v0, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 126
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 127
    new-instance v3, Landroid/database/SQLException;

    const-string v4, "Failed to insert row"

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_0
    sget-object v3, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 62
    const-string v0, "CREATE TABLE worldclocks (_id INTEGER PRIMARY KEY,timezoneid TEXT, offset INTEGER, position INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "CREATE TABLE stopwatchs (_id INTEGER PRIMARY KEY,total_elapsed LONG,lap_elapsed LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "CREATE TABLE alarms (_id INTEGER PRIMARY KEY,hour INTEGER, minutes INTEGER, daysofweek INTEGER, alarmtime INTEGER, enabled INTEGER, vibrate INTEGER, message TEXT, alert TEXT, type INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "INSERT INTO alarms (hour, minutes, daysofweek, alarmtime, enabled, vibrate,  message, alert) VALUES (7, 00, 31, 0, 0, 1, \'\', \'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "INSERT INTO alarms (hour, minutes, daysofweek, alarmtime, enabled, vibrate,  message, alert) VALUES (8, 00, 31, 0, 0, 1, \'\', \'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v0, "INSERT INTO alarms (hour, minutes, daysofweek, alarmtime, enabled, vibrate,  message, alert) VALUES (9, 00, 96, 0, 0, 1, \'\', \'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    const/4 v0, 0x5

    .line 94
    if-ge p2, v0, :cond_1

    .line 95
    const-string v0, "DROP TABLE IF EXISTS alarms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    :cond_0
    return-void

    .line 100
    :cond_1
    if-ne p2, v0, :cond_2

    .line 101
    const-string v0, "INSERT INTO alarms (hour, minutes, daysofweek, alarmtime, enabled, vibrate,  message, alert) VALUES (7, 00, 31, 0, 0, 1, \'\', \'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "INSERT INTO alarms (hour, minutes, daysofweek, alarmtime, enabled, vibrate,  message, alert) VALUES (8, 00, 31, 0, 0, 1, \'\', \'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    add-int/lit8 p2, p2, 0x1

    .line 106
    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_3

    .line 107
    add-int/lit8 p2, p2, 0x1

    .line 110
    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_4

    .line 111
    const-string v0, "ALTER TABLE alarms ADD COLUMN type INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE TABLE worldclocks (_id INTEGER PRIMARY KEY,timezoneid TEXT, offset INTEGER, position INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "CREATE TABLE stopwatchs (_id INTEGER PRIMARY KEY,total_elapsed LONG,lap_elapsed LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    add-int/lit8 p2, p2, 0x1

    .line 117
    :cond_4
    if-eq p2, p3, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade alarm database to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
