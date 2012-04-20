.class public Lcom/miui/providers/telocation/YellowPageDatabaseHelper;
.super Ljava/lang/Object;
.source "YellowPageDatabaseHelper.java"


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsInitializing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mIsInitializing:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 30
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mIsInitializing:Z

    if-eqz v2, :cond_2

    .line 31
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getReadableDatabase called recursively"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 36
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mIsInitializing:Z

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "etc/yellowpage.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, path:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 39
    const-string v2, "YellowPageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opened DB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in read-only mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object v0, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    iget-object v2, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mIsInitializing:Z

    .line 44
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 43
    .end local v1           #path:Ljava/lang/String;
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mIsInitializing:Z

    .line 44
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/miui/providers/telocation/YellowPageDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v3, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
