.class public Lcom/lbe/security/service/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/lbe/security/service/a/g;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/pm/PackageInfo;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/lbe/security/service/a/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lbe/security/service/a/d;->a:Lcom/lbe/security/service/a/g;

    iput-object p2, p0, Lcom/lbe/security/service/a/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/pm/PackageInfo;
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/a/d;->c:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/a/d;->a:Lcom/lbe/security/service/a/g;

    iget-object v1, p0, Lcom/lbe/security/service/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/a/g;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/a/d;->c:Landroid/content/pm/PackageInfo;

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/a/d;->c:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/a/d;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/a/d;->a:Lcom/lbe/security/service/a/g;

    iget-object v1, p0, Lcom/lbe/security/service/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/a/d;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/a/d;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/a/d;->a:Lcom/lbe/security/service/a/g;

    iget-object v1, p0, Lcom/lbe/security/service/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/a/g;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/a/d;->e:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/a/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
