.class public Lcom/miui/gallery/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;,
        Lcom/miui/gallery/app/GalleryActionBar$ActionItem;,
        Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;
    }
.end annotation


# static fields
.field private static final sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mAdapter:Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;

.field private mClusterRunner:Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCountText:Landroid/widget/TextView;

.field private mCurrentIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 70
    const/4 v0, 0x5

    new-array v11, v0, [Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    new-instance v0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0d00a3

    const v5, 0x7f0d005f

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0d00a5

    const v9, 0x7f0d007a

    const v10, 0x7f0d005b

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0d00a4

    const v9, 0x7f0d0079

    const v10, 0x7f0d005c

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v12

    const/4 v0, 0x3

    new-instance v4, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x20

    const v8, 0x7f0d00a6

    const v9, 0x7f0d005e

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v0

    new-instance v4, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x8

    const v8, 0x7f0d00a7

    const v9, 0x7f0d005d

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v13

    sput-object v11, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/miui/gallery/app/GalleryActionBar;Lcom/miui/gallery/app/GalleryActionBar$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mAdapter:Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;

    move-object v0, p1

    .line 136
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 137
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 138
    iput-object p1, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContext:Landroid/content/Context;

    const v1, 0x7f04002c

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCurrentIndex:I

    .line 146
    return-void
.end method

.method static synthetic access$000()[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/GalleryActionBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static getHeight(Landroid/app/Activity;)I
    .locals 2
    .parameter "activity"

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 150
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;
    .locals 3
    .parameter "menu"

    .prologue
    .line 203
    const v2, 0x7f0b008f

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 204
    .local v0, item:Landroid/view/MenuItem;
    const/4 v1, 0x0

    .line 205
    .local v1, shareActionProvider:Landroid/widget/ShareActionProvider;
    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    .end local v1           #shareActionProvider:Landroid/widget/ShareActionProvider;
    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 208
    .restart local v1       #shareActionProvider:Landroid/widget/ShareActionProvider;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 349
    iget v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mClusterRunner:Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mClusterRunner:Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;

    sget-object v1, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->action:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 357
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 354
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public setClusterItemEnabled(IZ)V
    .locals 5
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 172
    sget-object v0, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 173
    .local v2, item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 174
    iput-boolean p2, v2, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 178
    .end local v2           #item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 172
    .restart local v2       #item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setClusterItemVisibility(IZ)V
    .locals 5
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 181
    sget-object v0, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 182
    .local v2, item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 183
    iput-boolean p2, v2, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->visible:Z

    .line 187
    .end local v2           #item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 181
    .restart local v2       #item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCountText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    const-string v0, "GalleryActionBar"

    const-string v1, "setCountText failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .parameter "options"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 156
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 4
    .parameter "leftPadding"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    .line 240
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    return-void
.end method

.method public setStyle(I)V
    .locals 11
    .parameter "style"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 244
    iget-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    const v8, 0x7f0b007c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 245
    .local v3, hc:Landroid/view/View;
    iget-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    const v8, 0x7f0b007f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 246
    .local v6, vc:Landroid/view/View;
    const/4 v0, 0x0

    .line 249
    .local v0, child:Landroid/view/View;
    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    .line 250
    move-object v0, v3

    .line 251
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 261
    const v7, 0x7f0b007d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    .line 262
    iget-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    instance-of v7, v7, Lcom/miui/gallery/ui/GradualTextView;

    if-eqz v7, :cond_1

    .line 263
    iget-object v2, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    check-cast v2, Lcom/miui/gallery/ui/GradualTextView;

    .line 264
    .local v2, gtv:Lcom/miui/gallery/ui/GradualTextView;
    invoke-virtual {v2}, Lcom/miui/gallery/ui/GradualTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 265
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x7f080011

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 266
    .local v5, start:I
    const v7, 0x7f080012

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 267
    .local v1, end:I
    invoke-virtual {v2, v5, v1}, Lcom/miui/gallery/ui/GradualTextView;->setGradualColor(II)V

    .line 270
    .end local v1           #end:I
    .end local v2           #gtv:Lcom/miui/gallery/ui/GradualTextView;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #start:I
    :cond_1
    const v7, 0x7f0b007e

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    .line 274
    :goto_1
    return-void

    .line 254
    :cond_2
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 255
    move-object v0, v6

    .line 256
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_3
    const-string v7, "GalleryActionBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setActionBarStyle failed with unknown style="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "GalleryActionBar"

    const-string v1, "setTitleText failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTitleTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v0, "GalleryActionBar"

    const-string v1, "setTitleTextVisibility failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
