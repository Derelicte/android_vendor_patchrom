.class public final Lcom/lbe/security/bean/h;
.super Lcom/lbe/security/bean/j;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lbe/security/bean/j;-><init>(III)V

    iput p4, p0, Lcom/lbe/security/bean/h;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 1

    iget v0, p0, Lcom/lbe/security/bean/h;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method
