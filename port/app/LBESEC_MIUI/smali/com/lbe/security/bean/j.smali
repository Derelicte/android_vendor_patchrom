.class public Lcom/lbe/security/bean/j;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lbe/security/bean/j;->a:I

    iput p2, p0, Lcom/lbe/security/bean/j;->b:I

    iput p3, p0, Lcom/lbe/security/bean/j;->c:I

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/j;->c:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/j;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/j;->b:I

    return v0
.end method
