.class public Lcom/miui/home/launcher/HotSeats;
.super Landroid/widget/LinearLayout;
.source "HotSeats.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;


# static fields
.field private static final PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private mIsLoading:Z

.field private final mIsReplaceSupported:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v1, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    .line 36
    iput-boolean v1, p0, Lcom/miui/home/launcher/HotSeats;->mIsReplaceSupported:Z

    .line 37
    new-array v0, v2, [Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    .line 38
    new-array v0, v2, [Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/HotSeats;->setDrawingCacheEnabled(Z)V

    .line 41
    return-void
.end method

.method private getSeatsCount()I
    .locals 4

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 238
    add-int/lit8 v0, v0, 0x1

    .line 235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    return v0
.end method

.method private getVisibleSeatsCount()I
    .locals 4

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    return v0
.end method

.method private isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z
    .locals 7
    .parameter "x"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getSeatsCount()I

    move-result v0

    .line 123
    .local v0, count:I
    mul-int v3, p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 124
    .local v1, pos:I
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v3, v3, v1

    instance-of v3, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_0

    iget-wide v3, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 128
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5
    .parameter "source"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    iget-boolean v3, p0, Lcom/miui/home/launcher/HotSeats;->mIsReplaceSupported:Z

    if-eqz v3, :cond_2

    if-eq p1, p0, :cond_2

    move v0, v1

    .line 114
    .local v0, replaceSupported:Z
    :goto_0
    iget-boolean v3, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleSeatsCount()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_3

    :cond_0
    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v3, v1, :cond_1

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_1
    :goto_1
    return v1

    .end local v0           #replaceSupported:Z
    :cond_2
    move v0, v2

    .line 113
    goto :goto_0

    .restart local v0       #replaceSupported:Z
    :cond_3
    move v1, v2

    .line 114
    goto :goto_1
.end method

.method private isDropAllowed(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 3
    .parameter "dragObject"

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    iget-object v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    iget v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private restoreSeats()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, v0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method

.method private saveSeats()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/HotSeats;->saveSeats(Z)V

    .line 56
    return-void
.end method

.method private saveSeats(Z)V
    .locals 10
    .parameter "updateInDatabase"

    .prologue
    const/4 v9, 0x6

    .line 60
    const/4 v8, 0x0

    .line 61
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_0

    .line 62
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .restart local v8       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    const/4 v7, 0x0

    .line 65
    .local v7, currentPos:I
    const/4 v5, 0x0

    .line 66
    .local v5, savedPos:I
    :goto_0
    if-ge v7, v9, :cond_3

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v7

    sget-object v1, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    if-eq v0, v1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, v7

    aput-object v1, v0, v5

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v5

    iput v5, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 71
    if-eqz v8, :cond_1

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v5

    const-wide/16 v1, -0x65

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel;->getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 77
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 79
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.home.launcher.settings"

    invoke-static {v0, v1, v8}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    :cond_4
    :goto_1
    if-ge v5, v9, :cond_5

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x0

    aput-object v1, v0, v5

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    :cond_5
    const/4 v7, 0x0

    .line 89
    :goto_2
    if-ge v7, v9, :cond_6

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v7

    invoke-direct {p0, v7, v0}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 93
    :cond_6
    return-void
.end method

.method private setSeat(ILcom/miui/home/launcher/ItemInfo;)V
    .locals 4
    .parameter "pos"
    .parameter "info"

    .prologue
    .line 257
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v3, v3, p1

    if-ne v3, p2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aput-object p2, v3, p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/HotSeatButton;

    .line 261
    .local v2, v:Lcom/miui/home/launcher/HotSeatButton;
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/HotSeatButton;->unbind(Lcom/miui/home/launcher/DragController;)V

    .line 262
    if-eqz p2, :cond_2

    .line 263
    sget-object v3, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    if-eq p2, v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, p0, p2}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 265
    .local v0, icon:Lcom/miui/home/launcher/ItemIcon;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ItemIcon;->setCompactViewMode(Z)V

    .line 266
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2, v0, v3}, Lcom/miui/home/launcher/HotSeatButton;->bind(Lcom/miui/home/launcher/ItemIcon;Lcom/miui/home/launcher/DragController;)V

    .line 268
    .end local v0           #icon:Lcom/miui/home/launcher/ItemIcon;
    :cond_1
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/HotSeatButton;->setTag(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/HotSeatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 270
    invoke-virtual {v2}, Lcom/miui/home/launcher/HotSeatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 271
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 272
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 273
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/HotSeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 275
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/HotSeatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 276
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 277
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 278
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/HotSeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setSeats(ILcom/miui/home/launcher/ItemInfo;)I
    .locals 11
    .parameter "x"
    .parameter "info"

    .prologue
    const/4 v10, 0x6

    const/4 v0, 0x0

    .line 149
    const/4 v4, -0x1

    .line 150
    .local v4, replacedPos:I
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleSeatsCount()I

    move-result v1

    .line 152
    .local v1, count:I
    if-ne v1, v10, :cond_2

    .line 153
    mul-int v8, p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getWidth()I

    move-result v9

    div-int/2addr v8, v9

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 190
    :cond_0
    :goto_0
    if-ltz v4, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->restoreSeats()V

    .line 192
    invoke-direct {p0, v4, p2}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 195
    :cond_1
    return v4

    .line 154
    :cond_2
    if-nez v1, :cond_3

    .line 155
    const/4 v4, 0x0

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getWidth()I

    move-result v8

    div-int v6, v8, v1

    .line 159
    .local v6, seatWidth:I
    iget-boolean v8, p0, Lcom/miui/home/launcher/HotSeats;->mIsReplaceSupported:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v8, :cond_4

    const/16 v0, 0x24

    .line 161
    .local v0, buffer:I
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v8, v1, 0x1

    if-ge v2, v8, :cond_0

    .line 162
    mul-int v8, v6, v2

    div-int/lit8 v9, v6, 0x2

    add-int v7, v8, v9

    .line 164
    .local v7, seatX:I
    if-ge v2, v1, :cond_5

    sub-int v8, p1, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v0, :cond_5

    .line 165
    move v4, v2

    .line 166
    goto :goto_0

    .line 169
    :cond_5
    sub-int v8, v7, v6

    add-int/2addr v8, v0

    if-le p1, v8, :cond_8

    sub-int v8, v7, v0

    if-gt p1, v8, :cond_8

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, pos:I
    const/4 v5, 0x0

    .line 172
    .local v5, savedPos:I
    :goto_2
    if-ge v3, v10, :cond_0

    .line 173
    if-ne v3, v2, :cond_6

    .line 174
    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 183
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 177
    :cond_6
    iget-object v8, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    iget-object v9, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v9, v9, v5

    if-ne v8, v9, :cond_7

    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 180
    :cond_7
    iget-object v8, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v8, v8, v5

    invoke-direct {p0, v3, v8}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 161
    .end local v3           #pos:I
    .end local v5           #savedPos:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 100
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method findEmptySeat()I
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 334
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->isEmptySeat(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    .end local v0           #i:I
    :goto_1
    return v0

    .line 333
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public finishBinding()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/HotSeats;->saveSeats(Z)V

    .line 429
    iput-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    .line 430
    return-void
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 2
    .parameter "fi"

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/HotSeatButton;

    .line 412
    .local v0, btn:Lcom/miui/home/launcher/HotSeatButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeatButton;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeatButton;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 415
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method isEmptySeat(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v0, 0x0

    .line 329
    const/4 v1, 0x6

    if-ge p1, v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, p1

    sget-object v2, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 0
    .parameter "dragObject"

    .prologue
    .line 132
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->restoreSeats()V

    goto :goto_0
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "dragObject"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    sget-object v1, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setSeats(ILcom/miui/home/launcher/ItemInfo;)I

    goto :goto_0
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 10
    .parameter "dragObject"

    .prologue
    .line 200
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 204
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setSeats(ILcom/miui/home/launcher/ItemInfo;)I

    move-result v9

    .line 205
    .local v9, replacedPos:I
    if-ltz v9, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v8, v0, v9

    .line 206
    .local v8, replaced:Lcom/miui/home/launcher/ItemInfo;
    :goto_1
    if-eqz v8, :cond_1

    .line 207
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v0, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 208
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v0, v8, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 209
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 210
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    const-wide/16 v2, -0x65

    const-wide/16 v4, 0x0

    iget-object v6, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v6, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 220
    if-eqz v8, :cond_2

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    iget-wide v2, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v4, v8, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v6, v8, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v7, v8, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v1, v8

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 230
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    .end local v8           #replaced:Lcom/miui/home/launcher/ItemInfo;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 1
    .parameter "target"
    .parameter "dragObject"
    .parameter "success"

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 284
    if-nez p3, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->restoreSeats()V

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 46
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 325
    .end local p1
    :goto_0
    return v0

    .line 312
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_1

    move v0, v1

    .line 314
    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 319
    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    check-cast p1, Lcom/miui/home/launcher/HotSeatButton;

    .end local p1
    invoke-virtual {p1}, Lcom/miui/home/launcher/HotSeatButton;->getIcon()Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    sget v3, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sget-object v1, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushItem(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 342
    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/HotSeats;->isEmptySeat(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 343
    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-direct {p0, v5, p1}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 361
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    if-nez v5, :cond_1

    .line 362
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/HotSeats;->saveSeats(Z)V

    .line 364
    :cond_1
    const/4 v4, 0x1

    :cond_2
    return v4

    .line 345
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->findEmptySeat()I

    move-result v2

    .line 346
    .local v2, lastEmptySeat:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 347
    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ge v2, v5, :cond_4

    .line 348
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 350
    :cond_4
    move-object v0, p1

    .line 351
    .local v0, curInfo:Lcom/miui/home/launcher/ItemInfo;
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .local v1, i:I
    :goto_1
    if-gt v1, v2, :cond_0

    .line 352
    iget-object v5, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v3, v5, v1

    .line 353
    .local v3, prevInfo:Lcom/miui/home/launcher/ItemInfo;
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 354
    move-object v0, v3

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    const/4 v4, 0x0

    .line 389
    .local v4, removed:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 390
    .local v5, ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x6

    if-ge v1, v6, :cond_0

    .line 391
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v6, v6, v1

    if-nez v6, :cond_2

    .line 390
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v6, v6, v1

    instance-of v6, v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v6, :cond_3

    .line 395
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v6, v6, v1

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v6, v6, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 396
    .local v0, app:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    iget-object v6, v5, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 397
    const/4 v6, 0x0

    invoke-direct {p0, v1, v6}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 398
    const/4 v4, 0x1

    goto :goto_1

    .line 400
    .end local v0           #app:Landroid/content/ComponentName;
    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v6, v6, v1

    instance-of v6, v6, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v6, :cond_1

    .line 401
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v3, v6, v1

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    .line 402
    .local v3, info:Lcom/miui/home/launcher/FolderInfo;
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, p1, v6}, Lcom/miui/home/launcher/FolderInfo;->removeItems(Ljava/util/ArrayList;Lcom/miui/home/launcher/Launcher;)V

    .line 403
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    goto :goto_1

    .line 407
    .end local v1           #i:I
    .end local v3           #info:Lcom/miui/home/launcher/FolderInfo;
    .end local v5           #ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :cond_4
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/HotSeats;->saveSeats(Z)V

    .line 408
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 305
    return-void
.end method

.method public setLaucher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/HotSeatButton;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/HotSeatButton;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 298
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 419
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 420
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/HotSeatButton;

    invoke-virtual {v1}, Lcom/miui/home/launcher/HotSeatButton;->removeAllViewsInLayout()V

    .line 421
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aput-object v2, v1, v0

    .line 422
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aput-object v2, v1, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    .line 425
    return-void
.end method
