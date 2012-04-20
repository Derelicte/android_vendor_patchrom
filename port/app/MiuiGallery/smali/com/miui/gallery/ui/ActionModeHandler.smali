.class public Lcom/miui/gallery/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mListener:Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuExecutor:Lcom/miui/gallery/ui/MenuExecutor;

.field private mMenuTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mSelectionMenu:Lcom/miui/gallery/ui/CustomMenu$DropDownMenu;

.field private mTaskListener:Lcom/miui/gallery/ui/MenuExecutor$TaskListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"
    .parameter "taskListener"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryActivity;

    iput-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 76
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/SelectionManager;

    iput-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 77
    new-instance v0, Lcom/miui/gallery/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/ui/MenuExecutor;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/miui/gallery/ui/MenuExecutor;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    .line 79
    iput-object p3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mTaskListener:Lcom/miui/gallery/ui/MenuExecutor$TaskListener;

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/ActionModeHandler;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/miui/gallery/util/Future;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/ActionModeHandler;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/ActionModeHandler;Lcom/miui/gallery/util/ThreadPool$JobContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ActionModeHandler;->updateMenuOptions(Lcom/miui/gallery/util/ThreadPool$JobContext;)V

    return-void
.end method

.method public static addLayoutMargins(Landroid/view/View;IIII)Z
    .locals 3
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 262
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 263
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 264
    .local v0, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 265
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 266
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, p3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 267
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, p4

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 269
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    const/4 v2, 0x1

    .line 272
    .end local v0           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateMenuOptions(Lcom/miui/gallery/util/ThreadPool$JobContext;)V
    .locals 13
    .parameter "jc"

    .prologue
    const v12, 0xc000

    .line 172
    iget-object v10, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/miui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 174
    .local v5, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    const/4 v3, -0x1

    .line 175
    .local v3, operation:I
    iget-object v10, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v10}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    .line 176
    .local v1, manager:Lcom/miui/gallery/data/DataManager;
    const/4 v9, 0x0

    .line 177
    .local v9, type:I
    const/4 v7, 0x0

    .line 178
    .local v7, supportRecentHidden:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/data/Path;

    .line 179
    .local v4, path:Lcom/miui/gallery/data/Path;
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 220
    .end local v4           #path:Lcom/miui/gallery/data/Path;
    :goto_1
    return-void

    .line 180
    .restart local v4       #path:Lcom/miui/gallery/data/Path;
    :cond_0
    invoke-virtual {v1, v4}, Lcom/miui/gallery/data/DataManager;->getSupportedOperations(Lcom/miui/gallery/data/Path;)I

    move-result v6

    .line 183
    .local v6, support:I
    const v10, 0xf000

    and-int/2addr v10, v6

    or-int/2addr v7, v10

    .line 186
    invoke-virtual {v1, v4}, Lcom/miui/gallery/data/DataManager;->getMediaType(Lcom/miui/gallery/data/Path;)I

    move-result v10

    or-int/2addr v9, v10

    .line 187
    and-int/2addr v3, v6

    .line 188
    goto :goto_0

    .line 191
    .end local v4           #path:Lcom/miui/gallery/data/Path;
    .end local v6           #support:I
    :cond_1
    and-int/lit16 v10, v7, 0x3000

    const/16 v11, 0x3000

    if-ne v10, v11, :cond_2

    .line 192
    or-int/lit16 v3, v3, 0x1000

    .line 196
    :cond_2
    and-int v10, v7, v12

    if-ne v10, v12, :cond_3

    .line 197
    or-int/lit16 v3, v3, 0x4000

    .line 200
    :cond_3
    invoke-static {v9}, Lcom/miui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 202
    const/4 v3, 0x0

    .line 211
    :cond_4
    :goto_2
    move v8, v3

    .line 213
    .local v8, supportedOperation:I
    iget-object v10, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    new-instance v11, Lcom/miui/gallery/ui/ActionModeHandler$2;

    invoke-direct {v11, p0, v8}, Lcom/miui/gallery/ui/ActionModeHandler$2;-><init>(Lcom/miui/gallery/ui/ActionModeHandler;I)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 203
    .end local v8           #supportedOperation:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 204
    iget-object v10, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v10, Landroid/content/Context;

    invoke-static {v10, v2}, Lcom/miui/gallery/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 205
    and-int/lit16 v3, v3, -0x201

    goto :goto_2

    .line 208
    :cond_6
    const v10, 0xf907

    and-int/2addr v3, v10

    goto :goto_2
.end method

.method private updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 133
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 134
    .local v0, count:I
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0f

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, format:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionMenu:Lcom/miui/gallery/ui/CustomMenu$DropDownMenu;

    const v4, 0x7f0b00a2

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 140
    .local v2, item:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 141
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 143
    const v3, 0x7f0d004a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 146
    const v3, 0x7f0d0049

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 112
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mListener:Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mListener:Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;

    invoke-interface {v3, p2}, Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result v1

    .line 114
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    move v2, v1

    .line 128
    .end local v1           #result:Z
    .local v2, result:Z
    :goto_0
    return v2

    .line 119
    .end local v2           #result:Z
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, listener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0b0098

    if-ne v3, v4, :cond_1

    .line 121
    new-instance v0, Lcom/miui/gallery/ui/ImportCompleteListener;

    .end local v0           #listener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v0, v3}, Lcom/miui/gallery/ui/ImportCompleteListener;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    .line 123
    .restart local v0       #listener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/miui/gallery/ui/MenuExecutor;

    iget-object v4, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mTaskListener:Lcom/miui/gallery/ui/MenuExecutor$TaskListener;

    invoke-virtual {v3, p2, v0, v4}, Lcom/miui/gallery/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)Z

    move-result v1

    .line 124
    .restart local v1       #result:Z
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0b00a2

    if-ne v3, v4, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 126
    invoke-direct {p0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSelectionMenu()V

    :cond_2
    move v2, v1

    .line 128
    .end local v1           #result:Z
    .restart local v2       #result:Z
    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 153
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100007

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    iput-object p2, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 156
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 161
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/miui/gallery/util/Future;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuExecutor:Lcom/miui/gallery/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/MenuExecutor;->pause()V

    .line 254
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 258
    :cond_0
    return-void
.end method

.method public setActionModeListener(Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mListener:Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;

    .line 108
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionMenu:Lcom/miui/gallery/ui/CustomMenu$DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/CustomMenu$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public startActionMode(Z)Landroid/view/ActionMode;
    .locals 8
    .parameter "showSelectionMenu"

    .prologue
    const v7, 0x7f0b0002

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 84
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 85
    .local v1, actionMode:Landroid/view/ActionMode;
    new-instance v2, Lcom/miui/gallery/ui/CustomMenu;

    invoke-direct {v2, v0}, Lcom/miui/gallery/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, customMenu:Lcom/miui/gallery/ui/CustomMenu;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, customView:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f10000a

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/ui/CustomMenu;->addDropDownMenu(Landroid/widget/TextView;I)Lcom/miui/gallery/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mSelectionMenu:Lcom/miui/gallery/ui/CustomMenu$DropDownMenu;

    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 94
    new-instance v4, Lcom/miui/gallery/ui/ActionModeHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/gallery/ui/ActionModeHandler$1;-><init>(Lcom/miui/gallery/ui/ActionModeHandler;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v4}, Lcom/miui/gallery/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 99
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/ui/CustomMenu;->addDropDownMenu(Landroid/widget/TextView;I)Lcom/miui/gallery/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    goto :goto_0
.end method

.method public updateSupportedOperation()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/ActionModeHandler$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/ActionModeHandler$3;-><init>(Lcom/miui/gallery/ui/ActionModeHandler;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/miui/gallery/util/Future;

    .line 246
    return-void
.end method

.method public updateSupportedOperation(Lcom/miui/gallery/data/Path;Z)V
    .locals 0
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 226
    return-void
.end method
