.class public Lcom/miui/home/launcher/FolderIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;


# static fields
.field private static final DEFAULT_ICON_WIDTH:I


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mCover:Landroid/widget/ImageView;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mItemIcons:[Landroid/widget/ImageView;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPreviewIconContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/miui/home/launcher/Utilities;->getDipPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_ICON_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .line 50
    .local v0, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 4
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    .line 71
    .local v0, icon:Lcom/miui/home/launcher/FolderIcon;
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/home/launcher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object v2, v0, Lcom/miui/home/launcher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v2, p3, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 76
    iput-object p3, v0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 77
    iput-object p1, v0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 78
    iput-object v0, p3, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    .line 79
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 80
    return-object v0
.end method

.method private isDropable(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5
    .parameter "dragInfo"

    .prologue
    const/4 v0, 0x1

    .line 121
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean v1, v1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 117
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public deleteSelf()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/Launcher;->preRemoveItem(Landroid/view/View;)V

    .line 178
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 179
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$1;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "outRect"

    .prologue
    .line 162
    iget v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLeft:I

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/FolderIcon;->mTop:I

    iget v2, p0, Lcom/miui/home/launcher/FolderIcon;->mLeft:I

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/home/launcher/FolderIcon;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method loadItemIcons()V
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 86
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 87
    .local v1, si:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    .end local v1           #si:Lcom/miui/home/launcher/ShortcutInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    .line 93
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 159
    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 137
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 141
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 149
    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 144
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 8
    .parameter "d"

    .prologue
    .line 127
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 128
    .local v1, item:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v4, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 133
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    .line 56
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    .line 64
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    const v8, 0x3f428f5c

    const/4 v7, 0x0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;->onMeasure(II)V

    .line 101
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 103
    .local v0, iconWidth:I
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    .local v2, lpIcon:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .local v1, lpCover:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .local v3, lpPreview:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    int-to-float v5, v0

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    int-to-float v6, v0

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    .line 109
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v5, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_ICON_WIDTH:I

    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 111
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v7, v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 113
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 154
    return-void
.end method
