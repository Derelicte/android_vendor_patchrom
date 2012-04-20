.class public final Lcom/lbe/security/bean/k;
.super Lcom/lbe/security/bean/j;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/lbe/security/bean/i;

.field private final e:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(IIIIILcom/lbe/security/bean/i;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/lbe/security/bean/j;-><init>(III)V

    iput p3, p0, Lcom/lbe/security/bean/k;->a:I

    iput p4, p0, Lcom/lbe/security/bean/k;->b:I

    iput p5, p0, Lcom/lbe/security/bean/k;->c:I

    iput-object p6, p0, Lcom/lbe/security/bean/k;->d:Lcom/lbe/security/bean/i;

    iput-object p7, p0, Lcom/lbe/security/bean/k;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/lbe/security/bean/h;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/lbe/security/bean/k;->c:I

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/bean/k;->d:Lcom/lbe/security/bean/i;

    invoke-virtual {v0, p1}, Lcom/lbe/security/bean/i;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/lbe/security/bean/i;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/bean/k;->d:Lcom/lbe/security/bean/i;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/k;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/k;->b:I

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/bean/k;->e:[Ljava/lang/String;

    return-object v0
.end method
