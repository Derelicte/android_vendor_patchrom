.class final Lcom/lbe/security/service/privacy/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/service/privacy/c;)I
    .locals 1

    iget v0, p0, Lcom/lbe/security/service/privacy/c;->b:I

    return v0
.end method

.method public static a(Landroid/database/Cursor;)Landroid/util/SparseArray;
    .locals 7

    const-string v0, "pkg"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v0, "action"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v4

    :cond_0
    new-instance v5, Lcom/lbe/security/service/privacy/c;

    invoke-direct {v5}, Lcom/lbe/security/service/privacy/c;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/lbe/security/service/privacy/c;->a:I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/lbe/security/service/privacy/c;->b:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/lbe/security/service/privacy/c;->c:I

    iget v0, v5, Lcom/lbe/security/service/privacy/c;->a:I

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget v6, v5, Lcom/lbe/security/service/privacy/c;->a:I

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    iget v6, v5, Lcom/lbe/security/service/privacy/c;->b:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/lbe/security/service/privacy/c;)I
    .locals 1

    iget v0, p0, Lcom/lbe/security/service/privacy/c;->c:I

    return v0
.end method
