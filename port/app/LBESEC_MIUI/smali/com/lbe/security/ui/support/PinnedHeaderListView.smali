.class public Lcom/lbe/security/ui/support/PinnedHeaderListView;
.super Landroid/widget/ListView;


# instance fields
.field private a:Lcom/lbe/security/ui/support/a;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->a:Lcom/lbe/security/ui/support/a;

    invoke-interface {v2, p1}, Lcom/lbe/security/ui/support/a;->a(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->c:Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->a:Lcom/lbe/security/ui/support/a;

    iget-object v3, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-interface {v2, v3, p1, v0}, Lcom/lbe/security/ui/support/a;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    iget v2, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->d:I

    iget v3, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->e:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iput-boolean v5, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->c:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    iget-object v2, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v3, v2, :cond_3

    sub-int v0, v3, v2

    add-int v3, v2, v0

    mul-int/lit16 v3, v3, 0xff

    div-int v2, v3, v2

    :goto_1
    iget-object v3, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->a:Lcom/lbe/security/ui/support/a;

    iget-object v4, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-interface {v3, v4, p1, v2}, Lcom/lbe/security/ui/support/a;->a(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    iget v3, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->d:I

    iget v4, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->e:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iput-boolean v5, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->c:Z

    goto :goto_0

    :cond_3
    move v2, v0

    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->setFadingEdgeLength(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    iget v1, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->d:I

    iget v2, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->a(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lbe/security/ui/support/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->d:I

    iget-object v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->e:I

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p1, Lcom/lbe/security/ui/support/a;

    iput-object p1, p0, Lcom/lbe/security/ui/support/PinnedHeaderListView;->a:Lcom/lbe/security/ui/support/a;

    return-void
.end method
