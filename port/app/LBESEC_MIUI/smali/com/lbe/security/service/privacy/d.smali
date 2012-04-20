.class final Lcom/lbe/security/service/privacy/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Landroid/util/SparseArray;
    .locals 5

    const-string v0, "uid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v0, "trust"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Lcom/lbe/security/service/privacy/d;

    invoke-direct {v4}, Lcom/lbe/security/service/privacy/d;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/lbe/security/service/privacy/d;->b:I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v4, Lcom/lbe/security/service/privacy/d;->a:Z

    iget v0, v4, Lcom/lbe/security/service/privacy/d;->b:I

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
