.class public final Lcom/lbe/security/ui/af;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Lcom/lbe/security/bean/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lbe/security/bean/k;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/lbe/security/ui/af;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lbe/security/ui/af;->c:Lcom/lbe/security/bean/k;

    iput-object p3, p0, Lcom/lbe/security/ui/af;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/af;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/af;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030010

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/lbe/security/ui/o;

    invoke-direct {v1}, Lcom/lbe/security/ui/o;-><init>()V

    const v0, 0x7f09000b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/lbe/security/ui/o;->a:Landroid/widget/ImageView;

    const v0, 0x7f09000c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lbe/security/ui/o;->b:Landroid/widget/TextView;

    const v0, 0x7f09000d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lbe/security/ui/o;->c:Landroid/widget/TextView;

    const v0, 0x7f09002d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/lbe/security/ui/o;->d:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/ui/af;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/a;

    iget-object v2, v1, Lcom/lbe/security/ui/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lbe/security/ui/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/lbe/security/ui/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lbe/security/ui/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/lbe/security/ui/o;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lbe/security/ui/af;->a:Landroid/content/Context;

    const v4, 0x7f07008d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/lbe/security/ui/a;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget v7, v0, Lcom/lbe/security/ui/a;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/lbe/security/ui/af;->c:Lcom/lbe/security/bean/k;

    invoke-virtual {v0}, Lcom/lbe/security/ui/a;->d()Lcom/lbe/security/bean/e;

    move-result-object v0

    iget-object v3, p0, Lcom/lbe/security/ui/af;->c:Lcom/lbe/security/bean/k;

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/lbe/security/bean/k;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v0

    iget-object v1, v1, Lcom/lbe/security/ui/o;->d:Landroid/view/View;

    invoke-virtual {v0}, Lcom/lbe/security/bean/h;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/o;

    move-object v1, v0

    goto :goto_0
.end method
