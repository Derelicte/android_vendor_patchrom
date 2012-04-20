.class public Lcom/miui/home/launcher/ShortcutIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "ShortcutIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;


# instance fields
.field private mFolderCreationBg:Landroid/widget/ImageView;

.field private mFolderCreationBgEnter:Landroid/view/animation/Animation;

.field private mFolderCreationBgExit:Landroid/view/animation/Animation;

.field private mFolderCreationIconEnter:Landroid/view/animation/Animation;

.field private mFolderCreationIconExit:Landroid/view/animation/Animation;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBgEnter:Landroid/view/animation/Animation;

    .line 17
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBgExit:Landroid/view/animation/Animation;

    .line 18
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationIconEnter:Landroid/view/animation/Animation;

    .line 19
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationIconExit:Landroid/view/animation/Animation;

    .line 25
    return-void
.end method

.method static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 3
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "shortcutInfo"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 46
    .local v0, sci:Lcom/miui/home/launcher/ShortcutIcon;
    invoke-virtual {v0, p1, p3}, Lcom/miui/home/launcher/ShortcutIcon;->updateInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 47
    return-object v0
.end method

.method private isDropable(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 2
    .parameter "dragObject"

    .prologue
    const/4 v0, 0x1

    .line 103
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->isDropable(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isCompact()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "dragObject"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBgEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->invalidate()V

    .line 88
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "dragObject"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBgExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->invalidate()V

    .line 100
    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 0
    .parameter "dragObject"

    .prologue
    .line 93
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 3
    .parameter "dragObject"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->isDropable(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBgExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/Workspace;->createUserFolderWithDragOverlap(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)Z

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    .line 53
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    .line 54
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;->onMeasure(II)V

    .line 59
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3daaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 62
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public updateInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1
    .parameter "launcher"
    .parameter "info"

    .prologue
    .line 28
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 30
    iget-object v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/Launcher;->bindAppMessage(Lcom/miui/home/launcher/ShortcutIcon;Landroid/content/ComponentName;)V

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBgEnter:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 33
    const v0, 0x7f040013

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBgEnter:Landroid/view/animation/Animation;

    .line 34
    const v0, 0x7f040014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBgExit:Landroid/view/animation/Animation;

    .line 35
    const v0, 0x7f040015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationIconEnter:Landroid/view/animation/Animation;

    .line 36
    const v0, 0x7f040016

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationIconExit:Landroid/view/animation/Animation;

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 39
    return-void
.end method
