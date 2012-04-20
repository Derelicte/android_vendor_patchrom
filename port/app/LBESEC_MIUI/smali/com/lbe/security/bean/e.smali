.class public final Lcom/lbe/security/bean/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "%1$s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "package"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/bean/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    :cond_0
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/lbe/security/bean/e;->h:I

    iget-object v0, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lbe/security/bean/e;->b:Ljava/lang/String;

    iget-object v0, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lbe/security/bean/e;->g:Z

    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v0}, Lcom/lbe/security/bean/g;->a()[Lcom/lbe/security/bean/k;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_2

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/lbe/security/bean/k;->b()[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    :goto_2
    array-length v6, v5

    if-lt v2, v6, :cond_3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v6, v5, v2

    iget v7, p0, Lcom/lbe/security/bean/e;->h:I

    invoke-virtual {p1, v6, v1, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Lcom/lbe/security/bean/k;->c()I

    move-result v4

    iget-boolean v2, p0, Lcom/lbe/security/bean/e;->g:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    :goto_4
    invoke-virtual {p0, v4, v2}, Lcom/lbe/security/bean/e;->b(II)V

    goto :goto_3

    :cond_4
    const/4 v2, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static a(Landroid/database/Cursor;)Ljava/util/HashMap;
    .locals 11

    const-string v0, "package"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v0, "accept"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v0, "prompt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "reject"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "mask"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "trust"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v7

    :cond_0
    new-instance v8, Lcom/lbe/security/bean/e;

    invoke-direct {v8}, Lcom/lbe/security/bean/e;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lbe/security/bean/e;->b:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/lbe/security/bean/e;->c:J

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/lbe/security/bean/e;->d:J

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/lbe/security/bean/e;->e:J

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/lbe/security/bean/e;->f:J

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/lbe/security/bean/e;->g:Z

    iget-object v0, v8, Lcom/lbe/security/bean/e;->b:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "package"

    iget-object v2, p0, Lcom/lbe/security/bean/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accept"

    iget-wide v2, p0, Lcom/lbe/security/bean/e;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "prompt"

    iget-wide v2, p0, Lcom/lbe/security/bean/e;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "reject"

    iget-wide v2, p0, Lcom/lbe/security/bean/e;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mask"

    iget-wide v2, p0, Lcom/lbe/security/bean/e;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "trust"

    iget-boolean v2, p0, Lcom/lbe/security/bean/e;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/Integer;
    .locals 6

    const-wide/16 v4, 0x0

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/lbe/security/bean/e;->f:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/lbe/security/bean/e;->c:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/lbe/security/bean/e;->d:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/lbe/security/bean/e;->e:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 4

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->c:J

    xor-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lbe/security/bean/e;->c:J

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->d:J

    xor-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lbe/security/bean/e;->d:J

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->e:J

    xor-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lbe/security/bean/e;->e:J

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/lbe/security/bean/e;->c:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lbe/security/bean/e;->c:J

    goto :goto_0

    :pswitch_1
    iget-wide v0, p0, Lcom/lbe/security/bean/e;->d:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lbe/security/bean/e;->d:J

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Lcom/lbe/security/bean/e;->e:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lbe/security/bean/e;->e:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 4

    const-wide/16 v2, 0x0

    iput-boolean p1, p0, Lcom/lbe/security/bean/e;->g:Z

    iget-boolean v0, p0, Lcom/lbe/security/bean/e;->g:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->f:J

    iput-wide v0, p0, Lcom/lbe/security/bean/e;->c:J

    :goto_0
    iput-wide v2, p0, Lcom/lbe/security/bean/e;->e:J

    iput-wide v2, p0, Lcom/lbe/security/bean/e;->d:J

    return-void

    :cond_0
    iput-wide v2, p0, Lcom/lbe/security/bean/e;->c:J

    goto :goto_0
.end method

.method public final a(Lcom/lbe/security/bean/e;)Z
    .locals 14

    iget-wide v1, p1, Lcom/lbe/security/bean/e;->c:J

    iget-wide v3, p1, Lcom/lbe/security/bean/e;->d:J

    iget-wide v5, p1, Lcom/lbe/security/bean/e;->e:J

    iget-wide v7, p1, Lcom/lbe/security/bean/e;->f:J

    iget-boolean v9, p1, Lcom/lbe/security/bean/e;->g:Z

    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v0}, Lcom/lbe/security/bean/g;->a()[Lcom/lbe/security/bean/k;

    move-result-object v10

    const/4 v0, 0x0

    :goto_0
    array-length v11, v10

    if-lt v0, v11, :cond_0

    iget-boolean v0, p1, Lcom/lbe/security/bean/e;->g:Z

    iput-boolean v0, p0, Lcom/lbe/security/bean/e;->g:Z

    iget-wide v10, p0, Lcom/lbe/security/bean/e;->c:J

    cmp-long v0, v10, v1

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->d:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->e:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->f:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/lbe/security/bean/e;->g:Z

    if-ne v0, v9, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    aget-object v11, v10, v0

    invoke-virtual {v11}, Lcom/lbe/security/bean/k;->c()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {p0, v11}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v13

    if-nez v13, :cond_2

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/lbe/security/bean/e;->b(II)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/lbe/security/bean/e;->a(II)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final a([I)Z
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    array-length v6, p1

    move v1, v0

    move-wide v2, v4

    :goto_0
    if-lt v1, v6, :cond_1

    iget-wide v6, p0, Lcom/lbe/security/bean/e;->f:J

    and-long v1, v2, v6

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget v7, p1, v1

    int-to-long v7, v7

    or-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/lbe/security/bean/l;->e:Lcom/lbe/security/bean/g;

    invoke-virtual {v0}, Lcom/lbe/security/bean/g;->a()[Lcom/lbe/security/bean/k;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    aget-object v3, v2, v0

    iget-wide v4, p0, Lcom/lbe/security/bean/e;->f:J

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(II)V
    .locals 4

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->f:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/lbe/security/bean/e;->f:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lbe/security/bean/e;->f:J

    invoke-virtual {p0, p1, p2}, Lcom/lbe/security/bean/e;->a(II)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lbe/security/bean/e;->g:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/bean/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/e;->h:I

    return v0
.end method
