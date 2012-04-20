.class public final Lcom/lbe/security/service/privacy/k;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/lbe/security/service/privacy/k;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/util/SparseArray;

.field private c:Ljava/util/List;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private final g:Ljava/util/concurrent/locks/Lock;

.field private h:Ljava/util/concurrent/CountDownLatch;

.field private j:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lbe/security/service/privacy/o;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/privacy/o;-><init>(Lcom/lbe/security/service/privacy/k;)V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/k;->j:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-static {}, Lcom/lbe/security/service/privacy/m;->a()Lcom/lbe/security/service/privacy/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/k;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/k;->h:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->j:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/lbe/security/service/privacy/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/lbe/security/bean/e;Lcom/lbe/security/bean/e;[IZ)Lcom/lbe/security/bean/e;
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lbe/security/service/privacy/k;->b(Ljava/lang/String;)Lcom/lbe/security/bean/e;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->e()I

    move-result v5

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lcom/lbe/security/bean/e;->a(Lcom/lbe/security/bean/e;)Z

    invoke-virtual {v0, p1}, Lcom/lbe/security/bean/e;->a(Lcom/lbe/security/bean/e;)Z

    move-object p1, v0

    :goto_2
    if-nez p2, :cond_a

    invoke-static {p3}, Lcom/lbe/security/service/privacy/e;->a([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Lcom/lbe/security/bean/e;->a(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    :goto_4
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "package"

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->a()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_4
    if-eqz p4, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    move v0, v2

    :goto_5
    if-lt v0, v5, :cond_b

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/lbe/security/service/privacy/k;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lbe/security/service/privacy/k;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    invoke-direct {p0}, Lcom/lbe/security/service/privacy/k;->d()V

    move v1, v2

    :goto_6
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    return-object p1

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_7
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p3, v6}, Lcom/lbe/security/service/privacy/e;->a([II)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x2

    invoke-virtual {p1, v0, v6}, Lcom/lbe/security/bean/e;->a(II)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p3, v6}, Lcom/lbe/security/service/privacy/e;->b([II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lcom/lbe/security/bean/e;->a(II)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p1, p2}, Lcom/lbe/security/bean/e;->a(Lcom/lbe/security/bean/e;)Z

    move-result v0

    goto/16 :goto_4

    :cond_b
    aget-object v6, v3, v0

    :try_start_0
    iget-object v7, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/i;

    invoke-interface {v0, p1}, Lcom/lbe/security/service/privacy/i;->a(Lcom/lbe/security/bean/e;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :catch_0
    move-exception v6

    goto :goto_7

    :cond_d
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/lbe/security/service/privacy/k;Lcom/lbe/security/bean/e;Lcom/lbe/security/bean/e;[I)Lcom/lbe/security/bean/e;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;Lcom/lbe/security/bean/e;[IZ)Lcom/lbe/security/bean/e;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/lbe/security/service/privacy/k;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/privacy/k;->i:Lcom/lbe/security/service/privacy/k;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return-object v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v3, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget v3, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/lbe/security/service/privacy/k;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/privacy/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lbe/security/service/privacy/k;->i:Lcom/lbe/security/service/privacy/k;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/lbe/security/service/privacy/k;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/lbe/security/service/privacy/e;Lcom/lbe/security/bean/e;[Landroid/content/pm/Signature;)[I
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/lbe/security/service/privacy/e;

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/lbe/security/service/privacy/e;-><init>(Landroid/content/Context;Z)V

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lbe/security/service/a/g;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p3

    :cond_1
    invoke-virtual {p2}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/lbe/security/service/privacy/e;->a([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lbe/security/service/privacy/e;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/lbe/security/service/privacy/k;Lcom/lbe/security/service/privacy/e;Lcom/lbe/security/bean/e;[Landroid/content/pm/Signature;)[I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/e;Lcom/lbe/security/bean/e;[Landroid/content/pm/Signature;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/lbe/security/service/privacy/k;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/lbe/security/bean/e;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "package"

    const/4 v2, 0x0

    sget-object v3, Lcom/lbe/security/bean/e;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/lbe/security/bean/e;->a(Landroid/database/Cursor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/lbe/security/service/privacy/k;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic d(Lcom/lbe/security/service/privacy/k;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->h:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/lbe/security/bean/e;
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/lbe/security/bean/e;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v1, Lcom/lbe/security/bean/e;

    iget-object v2, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/lbe/security/bean/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/e;Lcom/lbe/security/bean/e;[Landroid/content/pm/Signature;)[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;Lcom/lbe/security/bean/e;[IZ)Lcom/lbe/security/bean/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/lbe/security/service/a/g;[I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/lbe/security/service/privacy/k;->a(Ljava/lang/Boolean;[I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    new-instance v3, Lcom/lbe/security/service/a/i;

    invoke-direct {v3, p1, v0}, Lcom/lbe/security/service/a/i;-><init>(Lcom/lbe/security/service/a/g;Lcom/lbe/security/bean/e;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/lang/Boolean;[I)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->e()I

    move-result v3

    if-ltz v3, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->c()Z

    move-result v4

    if-ne v3, v4, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lcom/lbe/security/bean/e;->a([I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_3

    move v2, v3

    :cond_0
    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/bean/e;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/lbe/security/service/privacy/k;->d()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-gez v2, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/bean/e;

    invoke-virtual {v1}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/lbe/security/service/privacy/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_6
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, p1, :cond_5

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v3, v4}, Lcom/lbe/security/service/privacy/k;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    invoke-static {v2, v0}, Lcom/lbe/security/service/privacy/k;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/i;

    invoke-interface {v0, v1}, Lcom/lbe/security/service/privacy/i;->b(Lcom/lbe/security/bean/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2
.end method

.method public final a(IZ)V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/bean/e;

    invoke-virtual {p0}, Lcom/lbe/security/service/privacy/k;->b()V

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_2

    invoke-direct {p0}, Lcom/lbe/security/service/privacy/k;->d()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-gez v2, :cond_3

    invoke-virtual {p0}, Lcom/lbe/security/service/privacy/k;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lbe/security/bean/e;

    invoke-virtual {v2, p2}, Lcom/lbe/security/bean/e;->a(Z)V

    iget-object v4, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "package"

    invoke-virtual {v2}, Lcom/lbe/security/bean/e;->a()Landroid/content/ContentValues;

    move-result-object v6

    sget-object v7, Lcom/lbe/security/bean/e;->a:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/i;

    invoke-interface {v0, v1}, Lcom/lbe/security/service/privacy/i;->c(Lcom/lbe/security/bean/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2
.end method

.method public final a(Lcom/lbe/security/bean/e;I)V
    .locals 8

    const/4 v1, 0x2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, p2, v1}, Lcom/lbe/security/bean/e;->b(II)V

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/e;Lcom/lbe/security/bean/e;[Landroid/content/pm/Signature;)[I

    move-result-object v1

    invoke-static {v1, p2}, Lcom/lbe/security/service/privacy/e;->a([II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Lcom/lbe/security/bean/e;->a(II)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "package"

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->a()Landroid/content/ContentValues;

    move-result-object v3

    sget-object v4, Lcom/lbe/security/bean/e;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lcom/lbe/security/service/privacy/k;->d()V

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    return-void

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v1, p2}, Lcom/lbe/security/service/privacy/e;->b([II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/lbe/security/bean/e;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/i;

    invoke-interface {v0, p1, p2}, Lcom/lbe/security/service/privacy/i;->a(Lcom/lbe/security/bean/e;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final a(Lcom/lbe/security/bean/e;II)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/lbe/security/bean/e;->a(II)V

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "package"

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->a()Landroid/content/ContentValues;

    move-result-object v3

    sget-object v4, Lcom/lbe/security/bean/e;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/lbe/security/service/privacy/k;->d()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/i;

    invoke-interface {v0, p1, p2}, Lcom/lbe/security/service/privacy/i;->a(Lcom/lbe/security/bean/e;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/lbe/security/service/privacy/i;)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/lbe/security/service/privacy/k;->d()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b(Lcom/lbe/security/service/privacy/i;)V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/lbe/security/service/privacy/k;->d()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
