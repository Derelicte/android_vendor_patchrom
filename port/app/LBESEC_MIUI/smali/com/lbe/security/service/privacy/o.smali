.class final Lcom/lbe/security/service/privacy/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/privacy/k;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/privacy/k;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    new-instance v8, Lcom/lbe/security/service/privacy/e;

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/k;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0, v11}, Lcom/lbe/security/service/privacy/e;-><init>(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/k;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/k;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2040

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->c(Lcom/lbe/security/service/privacy/k;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "package"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/lbe/security/bean/e;->a(Landroid/database/Cursor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/k;->b()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/k;->c()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/k;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->d(Lcom/lbe/security/service/privacy/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageInfo;

    :try_start_0
    new-instance v4, Lcom/lbe/security/bean/e;

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v0, v5, v1}, Lcom/lbe/security/bean/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    iget-object v5, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    iget-object v6, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6, v8, v4, v7}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/k;Lcom/lbe/security/service/privacy/e;Lcom/lbe/security/bean/e;[Landroid/content/pm/Signature;)[I

    move-result-object v6

    invoke-static {v5, v4, v0, v6}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/k;Lcom/lbe/security/bean/e;Lcom/lbe/security/bean/e;[I)Lcom/lbe/security/bean/e;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/k;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->b(Lcom/lbe/security/service/privacy/k;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v11, :cond_2

    invoke-interface {v9}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lbe/security/service/privacy/o;->a:Lcom/lbe/security/service/privacy/k;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/service/privacy/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/lbe/security/service/privacy/k;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lbe/security/service/privacy/k;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/e;

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
