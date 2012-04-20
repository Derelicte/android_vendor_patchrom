.class public final Lcom/lbe/security/bean/g;
.super Lcom/lbe/security/bean/j;


# instance fields
.field private final a:[I

.field private final b:[Lcom/lbe/security/bean/k;


# direct methods
.method public varargs constructor <init>(II[Lcom/lbe/security/bean/k;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/lbe/security/bean/j;-><init>(III)V

    iput-object p3, p0, Lcom/lbe/security/bean/g;->b:[Lcom/lbe/security/bean/k;

    iget-object v1, p0, Lcom/lbe/security/bean/g;->b:[Lcom/lbe/security/bean/k;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lbe/security/bean/g;->a:[I

    :goto_0
    iget-object v1, p0, Lcom/lbe/security/bean/g;->b:[Lcom/lbe/security/bean/k;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/lbe/security/bean/g;->a:[I

    iget-object v2, p0, Lcom/lbe/security/bean/g;->b:[Lcom/lbe/security/bean/k;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/lbe/security/bean/k;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lbe/security/bean/g;->b:[Lcom/lbe/security/bean/k;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/lbe/security/bean/g;->b:[Lcom/lbe/security/bean/k;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lbe/security/bean/k;->c()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/lbe/security/bean/g;->b:[Lcom/lbe/security/bean/k;

    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a()[Lcom/lbe/security/bean/k;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/bean/g;->b:[Lcom/lbe/security/bean/k;

    return-object v0
.end method

.method public final b()[I
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/bean/g;->a:[I

    return-object v0
.end method
