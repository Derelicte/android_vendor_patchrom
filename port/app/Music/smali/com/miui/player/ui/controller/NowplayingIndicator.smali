.class public Lcom/miui/player/ui/controller/NowplayingIndicator;
.super Ljava/lang/Object;
.source "NowplayingIndicator.java"


# instance fields
.field private final mBottomDivider:Landroid/view/View;

.field private final mContainer:Landroid/view/View;

.field private final mContent:Landroid/view/View;

.field private final mTopDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .parameter "container"
    .parameter "contentid"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContent:Landroid/view/View;

    .line 26
    const v0, 0x7f0c00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mTopDivider:Landroid/view/View;

    .line 27
    const v0, 0x7f0c00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mBottomDivider:Landroid/view/View;

    .line 28
    return-void
.end method


# virtual methods
.method public bindView(Landroid/widget/CursorAdapter;Landroid/database/Cursor;)V
    .locals 2
    .parameter "adapter"
    .parameter "cursor"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 83
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutMarginTop()I
    .locals 6

    .prologue
    .line 64
    iget-object v4, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x0

    .line 66
    .local v3, topMargin:I
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x30

    if-ne v4, v5, :cond_2

    .line 67
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 74
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mTopDivider:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 75
    add-int/lit8 v3, v3, -0x1

    .line 78
    :cond_1
    return v3

    .line 68
    :cond_2
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    .line 69
    iget-object v4, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 70
    .local v2, parent:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 71
    .local v0, height:I
    iget-object v4, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v3, v0, v4

    goto :goto_0
.end method

.method public setContentVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContent:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    return-void

    .line 35
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setLayoutParams(II)V
    .locals 4
    .parameter "gravity"
    .parameter "topMargin"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 43
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 45
    if-ltz p2, :cond_0

    .line 46
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    if-nez p2, :cond_1

    .line 55
    const/16 v1, 0x30

    if-ne p1, v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    const/16 v1, 0x50

    if-ne p1, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingIndicator;->mContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-void

    .line 31
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
