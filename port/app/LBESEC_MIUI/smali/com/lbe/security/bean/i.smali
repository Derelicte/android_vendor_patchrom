.class public abstract Lcom/lbe/security/bean/i;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/lbe/security/bean/h;


# direct methods
.method varargs constructor <init>([Lcom/lbe/security/bean/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lbe/security/bean/i;->a:[Lcom/lbe/security/bean/h;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/lbe/security/bean/h;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lbe/security/bean/i;->a:[Lcom/lbe/security/bean/h;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/lbe/security/bean/i;->a:[Lcom/lbe/security/bean/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lbe/security/bean/h;->c()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/lbe/security/bean/i;->a:[Lcom/lbe/security/bean/h;

    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a()[Lcom/lbe/security/bean/h;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/bean/i;->a:[Lcom/lbe/security/bean/h;

    return-object v0
.end method
