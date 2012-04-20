.class Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/contacts/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "itemViewType"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    .line 513
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 514
    iput p3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    .line 515
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    #calls: Lcom/android/contacts/list/ContactTileAdapter;->getLayoutResourceId(I)I
    invoke-static {p1, v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    .line 516
    return-void
.end method

.method private addTileFromEntry(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;IZ)V
    .locals 10
    .parameter "entry"
    .parameter "childIndex"
    .parameter "isLastRow"

    .prologue
    const v9, 0x7f0a001c

    const/16 v3, 0x8

    const/4 v8, -0x2

    const/4 v4, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v5

    if-gt v5, p2, :cond_1

    .line 536
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileView;

    .line 539
    .local v0, contactTile:Lcom/android/contacts/list/ContactTileView;
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 540
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 543
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v5, v4, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 548
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileAdapter;->access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/ContactPhotoManager;)V

    .line 550
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileAdapter;->access$400(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactTileView;->setListener(Lcom/android/contacts/list/ContactTileView$Listener;)V

    .line 552
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactTileAdapter;->isScreenRotated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 553
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x1

    invoke-direct {v1, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 555
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    .line 562
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #resources:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileView;->loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;)V

    .line 564
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v5, :pswitch_data_0

    .line 585
    :goto_1
    :pswitch_0
    return-void

    .line 560
    .end local v0           #contactTile:Lcom/android/contacts/list/ContactTileView;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileView;

    .restart local v0       #contactTile:Lcom/android/contacts/list/ContactTileView;
    goto :goto_0

    .line 568
    :pswitch_1
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactTileAdapter;->isScreenRotated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 569
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    .line 570
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/android/contacts/list/ContactTileView;->setPadding(IIII)V

    goto :goto_1

    .line 574
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt p2, v3, :cond_3

    move v5, v4

    :goto_2
    if-eqz p3, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v0, v4, v4, v5, v3}, Lcom/android/contacts/list/ContactTileView;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$500(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v3

    move v5, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$500(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v3

    goto :goto_3

    .line 579
    :pswitch_2
    if-eqz p3, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto :goto_1

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onLayoutForTiles(IIII)V
    .locals 9
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    .line 608
    .local v3, count:I
    sub-int v5, p3, p1

    .line 611
    .local v5, width:I
    const/4 v1, 0x0

    .line 612
    .local v1, childLeft:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 613
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 616
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 617
    .local v2, childWidth:I
    const/4 v6, 0x0

    add-int v7, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 618
    add-int/2addr v1, v2

    .line 612
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childWidth:I
    :cond_0
    return-void
.end method

.method private onMeasureForTiles(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, 0x4000

    const/4 v10, 0x0

    .line 642
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 644
    .local v8, width:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    .line 645
    .local v1, childCount:I
    if-nez v1, :cond_0

    .line 647
    invoke-virtual {p0, v8, v10}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    .line 680
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$500(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    mul-int v7, v9, v11

    .line 665
    .local v7, totalPaddingsInPixels:I
    sub-int v9, v8, v7

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    div-int v5, v9, v11

    .line 666
    .local v5, imageSize:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v9

    mul-int/2addr v9, v5

    sub-int v9, v8, v9

    sub-int v6, v9, v7

    .line 668
    .local v6, remainder:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 669
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int v11, v5, v9

    if-ge v4, v6, :cond_1

    const/4 v9, 0x1

    :goto_2
    add-int v3, v11, v9

    .line 673
    .local v3, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int v2, v5, v9

    .line 674
    .local v2, childHeight:I
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v9, v11}, Landroid/view/View;->measure(II)V

    .line 668
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2           #childHeight:I
    .end local v3           #childWidth:I
    :cond_1
    move v9, v10

    .line 670
    goto :goto_2

    .line 679
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    goto :goto_0
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter
    .parameter "isLastRow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 525
    .local v0, columnCount:I
    :goto_0
    const/4 v1, 0x0

    .local v1, columnCounter:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 526
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-object v2, v3

    .line 528
    .local v2, entry:Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    :goto_2
    invoke-direct {p0, v2, v1, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;IZ)V

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    .end local v0           #columnCount:I
    .end local v1           #columnCounter:I
    .end local v2           #entry:Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v0

    goto :goto_0

    .line 526
    .restart local v0       #columnCount:I
    .restart local v1       #columnCounter:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 530
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 589
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 601
    :pswitch_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 602
    :goto_0
    return-void

    .line 591
    :pswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles(IIII)V

    goto :goto_0

    .line 594
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->isScreenRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles(IIII)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 624
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 636
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 637
    :goto_0
    return-void

    .line 626
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(II)V

    goto :goto_0

    .line 629
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->isScreenRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(II)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
