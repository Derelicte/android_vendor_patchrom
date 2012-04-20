.class public Lcom/miui/home/launcher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/miui/home/launcher/DragSource;


# instance fields
.field private mCloseAnimation:Landroid/view/animation/AnimationSet;

.field private mClosing:Z

.field private mComfirmBtn:Landroid/view/View;

.field protected mContent:Lcom/miui/home/launcher/DropableGridView;

.field protected mDragController:Lcom/miui/home/launcher/DragController;

.field protected mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

.field private mDragPos:I

.field private mDragedView:Landroid/view/View;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mIsEditing:Z

.field private mLastAtMostMeasureHeight:I

.field private mLastCloseScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private mLastOpenScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOnFinishClose:Ljava/lang/Runnable;

.field private mOpenAnimation:Landroid/view/animation/AnimationSet;

.field private mRenameEdit:Landroid/widget/EditText;

.field protected mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

.field protected mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 57
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 62
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mDragPos:I

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setDrawingCacheEnabled(Z)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->finishShow()V

    return-void
.end method

.method private finishShow()V
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setVisibility(I)V

    .line 263
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLastOpenScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLastCloseScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 6
    .parameter "isShow"
    .parameter "doAnim"

    .prologue
    const v5, 0x7f04000f

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    if-ne v0, p1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 323
    :cond_0
    if-eqz p1, :cond_2

    .line 324
    if-eqz p2, :cond_1

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 343
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-eqz p1, :cond_4

    const v0, 0x3e99999a

    :goto_2
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DropableGridView;->setAlpha(F)V

    .line 344
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-nez p1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DropableGridView;->setEnabled(Z)V

    .line 345
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-nez p1, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DropableGridView;->setClickable(Z)V

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-nez p1, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DropableGridView;->setLongClickable(Z)V

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    goto :goto_0

    .line 334
    :cond_2
    if-eqz p2, :cond_3

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->scrollToDefault()V

    goto :goto_1

    .line 343
    :cond_4
    const/high16 v0, 0x3f80

    goto :goto_2

    :cond_5
    move v0, v2

    .line 344
    goto :goto_3

    :cond_6
    move v0, v2

    .line 345
    goto :goto_4

    :cond_7
    move v1, v2

    .line 346
    goto :goto_5
.end method


# virtual methods
.method bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 282
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    .line 283
    if-nez p1, :cond_0

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method public getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method getInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object v0
.end method

.method getLastAtMostMeasureHeight()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mLastAtMostMeasureHeight:I

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationEnd()V

    .line 293
    new-instance v0, Lcom/miui/home/launcher/Folder$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Folder$1;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 317
    :goto_0
    :pswitch_0
    return-void

    .line 305
    :pswitch_1
    invoke-direct {p0, v3, v3}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 311
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->updateFolderTitleInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    .line 314
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x7f070013
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onClose(ZLjava/lang/Runnable;)V
    .locals 8
    .parameter "allowAnimation"
    .parameter "onFinishClose"

    .prologue
    const/4 v6, 0x1

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    const/4 v4, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-boolean v6, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iput-boolean v4, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 232
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 234
    invoke-direct {p0, v4, v4}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 237
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->onClose()V

    .line 246
    if-nez p1, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->finishShow()V

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->finishShow()V

    goto :goto_0

    .line 251
    :cond_2
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 252
    .local v7, pos:[I
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/FolderIcon;->getLocationInWindow([I)V

    .line 253
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    aget v3, v7, v4

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v4, v4, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderIcon;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    aget v3, v7, v6

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v4, v4, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderIcon;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mLastCloseScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLastCloseScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 7
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 139
    if-eqz p3, :cond_0

    .line 140
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    .line 141
    .local v0, adapter:Lcom/miui/home/launcher/ShortcutsAdapter;
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-ne p1, v1, :cond_3

    .line 142
    iget v1, p0, Lcom/miui/home/launcher/Folder;->mDragPos:I

    iget-object v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-eq v1, v2, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->saveContentPosition()V

    .line 144
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 152
    .end local v0           #adapter:Lcom/miui/home/launcher/ShortcutsAdapter;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    if-nez p3, :cond_1

    .line 154
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 155
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1, v2, v5}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 159
    :cond_2
    iput-object v6, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 160
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragedView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 162
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->invalidate()V

    .line 163
    return-void

    .line 147
    .restart local v0       #adapter:Lcom/miui/home/launcher/ShortcutsAdapter;
    :cond_3
    iget-object v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v3, v3, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/4 v3, 0x1

    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 111
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DropableGridView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DropableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DropableGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 114
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    .line 121
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 126
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 131
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 353
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 357
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isPrivacyModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 367
    .local v0, app:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 368
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    sget v2, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v1, p2, p0, v0, v2}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V

    .line 369
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 370
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mDragedView:Landroid/view/View;

    .line 371
    iget v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iput v1, p0, Lcom/miui/home/launcher/Folder;->mDragPos:I

    .line 372
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 381
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 382
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 383
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "folder height must be wrap_content!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mLastAtMostMeasureHeight:I

    .line 386
    return-void
.end method

.method onOpen(Z)V
    .locals 8
    .parameter "allowAnimation"

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x3f80

    const v1, 0x3f19999a

    const/4 v4, 0x0

    .line 197
    iput-boolean v4, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iput-boolean v6, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropableGridView;->requestLayout()V

    .line 200
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 202
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Folder;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->requestFocus()Z

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->onOpen()V

    .line 213
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 218
    .local v7, pos:[I
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/FolderIcon;->getLocationInWindow([I)V

    .line 219
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    aget v3, v7, v4

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v4, v4, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderIcon;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    aget v3, v7, v6

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v4, v4, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderIcon;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mLastOpenScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLastOpenScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 168
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DropableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 136
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 182
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 183
    return-void
.end method

.method protected updateAppearance()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method
