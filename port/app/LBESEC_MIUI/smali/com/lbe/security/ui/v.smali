.class public final Lcom/lbe/security/ui/v;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/lbe/security/ui/support/a;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/lbe/security/ui/v;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/lbe/security/ui/v;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/v;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/ah;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/ah;

    iget v0, v0, Lcom/lbe/security/ui/ah;->a:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/u;

    if-nez v0, :cond_0

    new-instance v1, Lcom/lbe/security/ui/u;

    invoke-direct {v1}, Lcom/lbe/security/ui/u;-><init>()V

    const v0, 0x7f09002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lbe/security/ui/u;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/lbe/security/ui/u;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/ah;

    iget v0, v0, Lcom/lbe/security/ui/ah;->b:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/ah;

    iget-object v0, v0, Lcom/lbe/security/ui/ah;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/lbe/security/ui/u;->a:Landroid/widget/TextView;

    int-to-float v1, p3

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/ah;

    iget v0, v0, Lcom/lbe/security/ui/ah;->a:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lbe/security/ui/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/ah;

    iget v1, v0, Lcom/lbe/security/ui/ah;->a:I

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/lbe/security/ui/v;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/lbe/security/ui/u;

    invoke-direct {v2}, Lcom/lbe/security/ui/u;-><init>()V

    const v1, 0x7f09002a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lbe/security/ui/u;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v1, v1, Lcom/lbe/security/ui/u;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/lbe/security/ui/ah;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/ui/u;

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/lbe/security/ui/v;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03000e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/lbe/security/ui/n;

    invoke-direct {v2}, Lcom/lbe/security/ui/n;-><init>()V

    const v1, 0x7f09002b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lbe/security/ui/n;->a:Landroid/widget/TextView;

    const v1, 0x7f090022

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lbe/security/ui/n;->b:Landroid/widget/TextView;

    const v1, 0x7f090024

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lbe/security/ui/n;->c:Landroid/widget/TextView;

    const v1, 0x7f090023

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lbe/security/ui/n;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    iget-object v2, v1, Lcom/lbe/security/ui/n;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lbe/security/ui/ah;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/lbe/security/ui/n;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lbe/security/ui/ah;->d:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/lbe/security/ui/n;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lbe/security/ui/ah;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/lbe/security/ui/n;->d:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/lbe/security/ui/ah;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/ui/n;

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    instance-of v0, p1, Lcom/lbe/security/ui/support/PinnedHeaderListView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/lbe/security/ui/support/PinnedHeaderListView;

    invoke-virtual {p1, p2}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->a(I)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
