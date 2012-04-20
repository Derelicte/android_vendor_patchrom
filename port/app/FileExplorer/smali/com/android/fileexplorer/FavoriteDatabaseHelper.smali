.class public Lcom/android/fileexplorer/FavoriteDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FavoriteDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/android/fileexplorer/FavoriteDatabaseHelper;


# instance fields
.field private firstCreate:Z

.field private mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 35
    const-string v0, "file_explorer"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    sput-object p0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->instance:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    .line 37
    iput-object p2, p0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;

    .line 38
    return-void
.end method

.method private createValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "title"
    .parameter "location"

    .prologue
    .line 126
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "location"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/FavoriteDatabaseHelper;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->instance:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    return-object v0
.end method


# virtual methods
.method public delete(JZ)V
    .locals 5
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id=?"

    .line 96
    .local v1, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 99
    .local v2, whereValue:[Ljava/lang/String;
    const-string v3, "favorite"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    if-eqz p3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;

    invoke-interface {v3}, Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;->onFavoriteDatabaseChanged()V

    .line 103
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "location=?"

    .line 108
    .local v1, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 111
    .local v2, whereValue:[Ljava/lang/String;
    const-string v3, "favorite"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;

    invoke-interface {v3}, Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;->onFavoriteDatabaseChanged()V

    .line 113
    return-void
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "title"
    .parameter "location"

    .prologue
    .line 84
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->isFavorite(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const-wide/16 v1, -0x1

    .line 90
    :goto_0
    return-wide v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "favorite"

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->createValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 89
    .local v1, ret:J
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;

    invoke-interface {v3}, Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;->onFavoriteDatabaseChanged()V

    goto :goto_0
.end method

.method public isFavorite(Ljava/lang/String;)Z
    .locals 11
    .parameter "path"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 64
    const-string v3, "location=?"

    .line 65
    .local v3, selection:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 68
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "favorite"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 70
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 74
    :goto_0
    return v10

    .line 72
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 73
    .local v9, ret:Z
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v10, v9

    .line 74
    goto :goto_0

    .end local v9           #ret:Z
    :cond_1
    move v9, v10

    .line 72
    goto :goto_1
.end method

.method public isFirstCreate()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->firstCreate:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 46
    const-string v0, "Create table favorite(_id integer primary key autoincrement,title text, location text );"

    .line 48
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->firstCreate:Z

    .line 50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 54
    const-string v0, " DROP TABLE IF EXISTS favorite"

    .line 55
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    return-void
.end method

.method public query()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "favorite"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 80
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method
