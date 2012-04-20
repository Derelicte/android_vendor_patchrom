.class public final Lcom/lbe/security/service/privacy/m;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Lcom/lbe/security/service/privacy/m;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/privacy/m;->a:Lcom/lbe/security/service/privacy/m;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "lbe_security.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/lbe/security/service/privacy/m;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/lbe/security/service/privacy/m;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/privacy/m;->a:Lcom/lbe/security/service/privacy/m;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/lbe/security/service/privacy/m;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/privacy/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lbe/security/service/privacy/m;->a:Lcom/lbe/security/service/privacy/m;

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS `permissionrecord`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `packages`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `permissions`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `package`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `bwlist`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    :try_start_0
    const-string v2, "packages"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    if-eqz v11, :cond_8

    :try_start_1
    invoke-static {v11}, Lcom/lbe/security/service/privacy/d;->a(Landroid/database/Cursor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object v13, v1

    :goto_0
    const-string v2, "permissions"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-static {v2}, Lcom/lbe/security/service/privacy/c;->a(Landroid/database/Cursor;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v1, "DROP TABLE IF EXISTS `packages`"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS `permissions`"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE `package` (`package` VARCHAR PRIMARY KEY, `accept` INTEGER NOT NULL DEFAULT 0, `prompt` INTEGER NOT NULL DEFAULT 0, `reject` INTEGER NOT NULL DEFAULT 0, `mask` INTEGER NOT NULL DEFAULT 0, `trust` SMALLINT NOT NULL)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v1, p0, Lcom/lbe/security/service/privacy/m;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v9

    :goto_2
    return v1

    :catchall_0
    move-exception v1

    move-object v2, v12

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    :try_start_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance v5, Lcom/lbe/security/bean/e;

    iget-object v1, p0, Lcom/lbe/security/service/privacy/m;->b:Landroid/content/Context;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v1, v3, v2}, Lcom/lbe/security/bean/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/service/privacy/d;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lcom/lbe/security/service/privacy/d;->a:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/lbe/security/bean/e;->a(Z)V

    :cond_5
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-virtual {v5}, Lcom/lbe/security/bean/e;->a()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/lbe/security/bean/e;->a(Z)V

    move v3, v10

    :goto_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/service/privacy/c;

    invoke-static {v1}, Lcom/lbe/security/service/privacy/c;->a(Lcom/lbe/security/service/privacy/c;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-static {v1}, Lcom/lbe/security/service/privacy/c;->a(Lcom/lbe/security/service/privacy/c;)I

    move-result v6

    invoke-static {v1}, Lcom/lbe/security/service/privacy/c;->b(Lcom/lbe/security/service/privacy/c;)I

    move-result v1

    invoke-virtual {v5, v6, v1}, Lcom/lbe/security/bean/e;->b(II)V

    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    :cond_7
    invoke-static {v1}, Lcom/lbe/security/service/privacy/c;->a(Lcom/lbe/security/service/privacy/c;)I

    move-result v6

    invoke-static {v1}, Lcom/lbe/security/service/privacy/c;->b(Lcom/lbe/security/service/privacy/c;)I

    move-result v1

    invoke-virtual {v5, v6, v1}, Lcom/lbe/security/bean/e;->a(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catchall_1
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v10

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v11

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    goto/16 :goto_3

    :cond_8
    move-object v13, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "CREATE TABLE `package` (`package` VARCHAR PRIMARY KEY, `accept` INTEGER NOT NULL DEFAULT 0, `prompt` INTEGER NOT NULL DEFAULT 0, `reject` INTEGER NOT NULL DEFAULT 0, `mask` INTEGER NOT NULL DEFAULT 0, `trust` SMALLINT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE `permissionrecord` (`title` VARCHAR NOT NULL , `content` VARCHAR NOT NULL , `pkg` INTEGER NOT NULL , `timestamp` BIGINT NOT NULL , `id` INTEGER PRIMARY KEY AUTOINCREMENT , `action` INTEGER NOT NULL , `type` INTEGER NOT NULL )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE `bwlist` (`packageName` VARCHAR PRIMARY KEY NOT NULL, `black` INTEGER NOT NULL DEFAULT 0, `white` INTEGER NOT NULL DEFAULT 0, `signature` VARCHAR NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    const/4 v4, 0x5

    const/4 v0, 0x1

    if-ge p2, v4, :cond_0

    invoke-static {p1}, Lcom/lbe/security/service/privacy/m;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/lbe/security/service/privacy/m;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p2, 0x6

    const-string v1, "LBE-Sec"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upgrade unsupported database to latest version, result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p2, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/lbe/security/service/privacy/m;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    const-string v1, "LBE-Sec"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upgrade database from vesion 5 to 6, result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/lbe/security/service/privacy/m;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "LBE-Sec"

    const-string v1, "Cleaned old database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/lbe/security/service/privacy/m;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    return-void
.end method
