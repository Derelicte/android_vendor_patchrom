.class public final Lcom/lbe/security/service/privacy/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lbe/security/service/privacy/i;


# static fields
.field private static f:Lcom/lbe/security/service/privacy/q;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/lbe/security/service/privacy/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/lbe/security/service/privacy/q;->a:I

    iput v0, p0, Lcom/lbe/security/service/privacy/q;->b:I

    iput-object p1, p0, Lcom/lbe/security/service/privacy/q;->c:Landroid/content/Context;

    invoke-static {}, Lcom/lbe/security/service/privacy/m;->a()Lcom/lbe/security/service/privacy/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/privacy/q;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/i;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SELECT COUNT(ID) FROM %s WHERE %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "permissionrecord"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lbe/security/service/privacy/q;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :catch_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static a()Lcom/lbe/security/service/privacy/q;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/privacy/q;->f:Lcom/lbe/security/service/privacy/q;

    return-object v0
.end method

.method private static a([I[ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/StringBuilder;
    .locals 10

    const/16 v9, 0x29

    const/16 v8, 0x28

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_c

    array-length v0, p0

    if-ne v0, v2, :cond_6

    const-string v0, "(%1$s = %2$d)"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "pkg"

    aput-object v5, v4, v1

    aget v5, p0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :goto_1
    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    array-length v0, p1

    if-ne v0, v2, :cond_7

    const-string v0, "(%1$s = %2$d)"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "type"

    aput-object v5, v4, v1

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    :cond_1
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    if-nez v0, :cond_2

    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "(%1$s BETWEEN %2$d AND %3$d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "timestamp"

    aput-object v5, v4, v1

    aput-object p2, v4, v2

    aput-object p3, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_3
    :goto_3
    if-eqz p4, :cond_5

    if-nez v0, :cond_4

    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "(%1$s = %2$d)"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "action"

    aput-object v5, v4, v1

    aput-object p4, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    return-object v3

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x5b

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x5d

    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v4, "(%1$s in %2$s)"

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "pkg"

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x5b

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x5d

    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v4, "(%1$s in %2$s)"

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "type"

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_a

    if-nez p3, :cond_a

    if-nez v0, :cond_9

    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "(%1$s >= %2$d)"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "timestamp"

    aput-object v5, v4, v1

    aput-object p2, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_3

    :cond_a
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    if-nez v0, :cond_b

    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "(%1$s <= %2$d)"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "timestamp"

    aput-object v5, v4, v1

    aput-object p2, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_1
.end method

.method public static a(Landroid/app/Application;Lcom/lbe/security/service/privacy/k;)V
    .locals 1

    new-instance v0, Lcom/lbe/security/service/privacy/q;

    invoke-direct {v0, p0, p1}, Lcom/lbe/security/service/privacy/q;-><init>(Landroid/content/Context;Lcom/lbe/security/service/privacy/k;)V

    sput-object v0, Lcom/lbe/security/service/privacy/q;->f:Lcom/lbe/security/service/privacy/q;

    return-void
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/lbe/security/service/privacy/QueryFilter;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8

    monitor-enter p0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    :try_start_0
    const-string v0, "%1$s DESC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v7, p2

    :goto_0
    iget-object v0, p1, Lcom/lbe/security/service/privacy/QueryFilter;->a:[I

    iget-object v1, p1, Lcom/lbe/security/service/privacy/QueryFilter;->b:[I

    iget-object v2, p1, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    iget-object v4, p1, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lbe/security/service/privacy/q;->a([I[ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "permissionrecord"

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/lbe/security/bean/EventLog;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v7, p2

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/lbe/security/bean/EventLog;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "permissionrecord"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/lbe/security/bean/EventLog;->f()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p1}, Lcom/lbe/security/bean/EventLog;->e()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/lbe/security/bean/l;->c:Lcom/lbe/security/bean/g;

    invoke-virtual {p1}, Lcom/lbe/security/bean/EventLog;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lbe/security/bean/g;->a(I)Lcom/lbe/security/bean/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lbe/security/service/privacy/q;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lbe/security/service/privacy/q;->a:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lbe/security/service/privacy/q;->b()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/lbe/security/service/privacy/q;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lbe/security/service/privacy/q;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/lbe/security/service/privacy/b;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/lbe/security/bean/e;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/lbe/security/bean/e;I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Lcom/lbe/security/service/privacy/QueryFilter;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/lbe/security/service/privacy/QueryFilter;->a:[I

    iget-object v1, p1, Lcom/lbe/security/service/privacy/QueryFilter;->b:[I

    iget-object v2, p1, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    iget-object v4, p1, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lbe/security/service/privacy/q;->a([I[ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/q;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "permissionrecord"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/lbe/security/service/privacy/b;)V
    .locals 2

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized b(Lcom/lbe/security/service/privacy/QueryFilter;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/lbe/security/service/privacy/QueryFilter;->a:[I

    iget-object v1, p1, Lcom/lbe/security/service/privacy/QueryFilter;->b:[I

    iget-object v2, p1, Lcom/lbe/security/service/privacy/QueryFilter;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/lbe/security/service/privacy/QueryFilter;->d:Ljava/lang/Long;

    iget-object v4, p1, Lcom/lbe/security/service/privacy/QueryFilter;->e:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lbe/security/service/privacy/q;->a([I[ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lbe/security/service/privacy/q;->a(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/lbe/security/bean/e;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/lbe/security/service/privacy/QueryFilter;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/lbe/security/bean/e;->e()I

    move-result v3

    aput v3, v1, v2

    invoke-direct {v0, v1, v4, v4}, Lcom/lbe/security/service/privacy/QueryFilter;-><init>([I[ILjava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/service/privacy/QueryFilter;)V

    return-void
.end method

.method public final declared-synchronized b(Lcom/lbe/security/service/privacy/b;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, p0, Lcom/lbe/security/service/privacy/q;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lcom/lbe/security/bean/e;)V
    .locals 0

    return-void
.end method
