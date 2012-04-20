.class Lcom/android/browser/MiuiNavTabScroller$ContentLayout;
.super Landroid/widget/LinearLayout;
.source "MiuiNavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiNavTabScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentLayout"
.end annotation


# instance fields
.field mScroller:Lcom/android/browser/MiuiNavTabScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/MiuiNavTabScroller;)V
    .locals 0
    .parameter "context"
    .parameter "scroller"

    .prologue
    .line 555
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 556
    iput-object p2, p0, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    .line 557
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x0

    .line 561
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 563
    invoke-virtual {p0, v7}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 564
    .local v3, vv:Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getPaddingLeft()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getPaddingTop()I

    move-result v4

    if-nez v4, :cond_0

    .line 565
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v4}, Lcom/android/browser/MiuiNavTabScroller;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    #calls: Lcom/android/browser/MiuiNavTabScroller;->getPadding(I)I
    invoke-static {v4, v5}, Lcom/android/browser/MiuiNavTabScroller;->access$400(Lcom/android/browser/MiuiNavTabScroller;I)I

    move-result v0

    .line 567
    .local v0, pad:I
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setMeasuredDimension(II)V

    .line 574
    .end local v0           #pad:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v4}, Lcom/android/browser/MiuiNavTabScroller;->getGap()I

    move-result v4

    if-eqz v4, :cond_1

    .line 575
    invoke-virtual {p0, v7}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 576
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 577
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v4}, Lcom/android/browser/MiuiNavTabScroller;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 578
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getMeasuredWidth()I

    move-result v5

    add-int v1, v4, v5

    .line 579
    .local v1, total:I
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setMeasuredDimension(II)V

    .line 586
    .end local v1           #total:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 569
    :cond_2
    iget-object v4, p0, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    #calls: Lcom/android/browser/MiuiNavTabScroller;->getPadding(I)I
    invoke-static {v4, v5}, Lcom/android/browser/MiuiNavTabScroller;->access$400(Lcom/android/browser/MiuiNavTabScroller;I)I

    move-result v0

    .line 570
    .restart local v0       #pad:I
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getMeasuredHeight()I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 581
    .end local v0           #pad:I
    .restart local v2       #v:Landroid/view/View;
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getMeasuredHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 582
    .restart local v1       #total:I
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/browser/MiuiNavTabScroller$ContentLayout;->setMeasuredDimension(II)V

    goto :goto_1
.end method
