.class public Lcom/miui/player/ui/controller/TitleBarController;
.super Ljava/lang/Object;
.source "TitleBarController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mContainer:Landroid/view/View;

.field private mPrimaryText:Landroid/widget/TextView;

.field private mSecondaryText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    .line 45
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 49
    :cond_0
    const v2, 0x7f030037

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    .line 50
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 51
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 53
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 54
    iget-object v1, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    .line 55
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 56
    .local v0, left:I
    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    .end local v0           #left:I
    .end local v1           #v:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    const v3, 0x7f0c009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/miui/player/ui/controller/TitleBarController$1;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/controller/TitleBarController$1;-><init>(Lcom/miui/player/ui/controller/TitleBarController;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getNavigatorWidth()I
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 112
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0
.end method

.method public setBackgroundImageRes(I)V
    .locals 4
    .parameter "resid"

    .prologue
    .line 136
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    if-nez p1, :cond_0

    .line 138
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    .local v0, defaultBar:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 140
    .local v1, height:I
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    .end local v0           #defaultBar:Landroid/graphics/drawable/Drawable;
    .end local v1           #height:I
    :cond_0
    return-void
.end method

.method public setGotoNowplayingVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 146
    .local v0, v:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    const v2, 0x7f0c009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-void

    .line 145
    .end local v0           #v:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setNavigatorRes(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 108
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    const-string v1, "setPrimaryText failed"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    const-string v1, "setSecondaryText failed"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 11
    .parameter "style"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 76
    iget-object v7, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    const v8, 0x7f0c009b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, hc:Landroid/view/View;
    iget-object v7, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    const v8, 0x7f0c009d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 78
    .local v6, vc:Landroid/view/View;
    const/4 v0, 0x0

    .line 80
    .local v0, child:Landroid/view/View;
    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    .line 81
    move-object v0, v3

    .line 82
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 91
    const v7, 0x7f0c006a

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/player/ui/controller/TitleBarController;->mPrimaryText:Landroid/widget/TextView;

    .line 92
    iget-object v7, p0, Lcom/miui/player/ui/controller/TitleBarController;->mPrimaryText:Landroid/widget/TextView;

    instance-of v7, v7, Lcom/miui/player/ui/view/GradualTextView;

    if-eqz v7, :cond_1

    .line 93
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mPrimaryText:Landroid/widget/TextView;

    check-cast v2, Lcom/miui/player/ui/view/GradualTextView;

    .line 94
    .local v2, gtv:Lcom/miui/player/ui/view/GradualTextView;
    invoke-virtual {v2}, Lcom/miui/player/ui/view/GradualTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 95
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x7f06001f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 96
    .local v5, start:I
    const v7, 0x7f060020

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 97
    .local v1, end:I
    invoke-virtual {v2, v5, v1}, Lcom/miui/player/ui/view/GradualTextView;->setGradualColor(II)V

    .line 100
    .end local v1           #end:I
    .end local v2           #gtv:Lcom/miui/player/ui/view/GradualTextView;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #start:I
    :cond_1
    const v7, 0x7f0c006b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryText:Landroid/widget/TextView;

    .line 104
    :goto_1
    return-void

    .line 84
    :cond_2
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 85
    move-object v0, v6

    .line 86
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_3
    sget-object v7, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setTitleStyle failed with unknown style="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
