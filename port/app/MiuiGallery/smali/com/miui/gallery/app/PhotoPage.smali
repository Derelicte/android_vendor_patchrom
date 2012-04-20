.class public Lcom/miui/gallery/app/PhotoPage;
.super Lcom/miui/gallery/app/ActivityStateFinishSelf;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/ui/PhotoView$PhotoTapListener;
.implements Lcom/miui/gallery/ui/UserInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/PhotoPage$SendListAdapter;,
        Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;,
        Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;,
        Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;,
        Lcom/miui/gallery/app/PhotoPage$Model;
    }
.end annotation


# instance fields
.field private deleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mActionBar:Landroid/app/ActionBar;

.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mApplyListAdapter:Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

.field private mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfos:[Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

.field private mIsFromStorageExplorer:Z

.field private mIsInteracting:Z

.field private mIsMenuVisible:Z

.field private mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mMenuExecutor:Lcom/miui/gallery/ui/MenuExecutor;

.field private mModel:Lcom/miui/gallery/app/PhotoPage$Model;

.field private mPendingSharePath:Lcom/miui/gallery/data/Path;

.field private mPhotoView:Lcom/miui/gallery/ui/PhotoView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field private mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mSendListAdapter:Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShowMenuType:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityStateFinishSelf;-><init>()V

    .line 128
    iput-boolean v4, p0, Lcom/miui/gallery/app/PhotoPage;->mIsFromStorageExplorer:Z

    .line 130
    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    .line 137
    iput v4, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 139
    iput-boolean v5, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    .line 144
    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    .line 158
    new-instance v0, Lcom/miui/gallery/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/PhotoPage$1;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 409
    new-instance v0, Lcom/miui/gallery/app/PhotoPage$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/PhotoPage$5;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 572
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    .line 935
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

    new-instance v1, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

    const v2, 0x7f02000a

    const v3, 0x7f0d00ca

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;-><init>(II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

    const v2, 0x7f020006

    const v3, 0x7f0d00cc

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;-><init>(II)V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mInfos:[Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

    .line 1026
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->getPhotoCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/PhotoPage;)[Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mInfos:[Lcom/miui/gallery/app/PhotoPage$ApplyListItemInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/PhotoPage;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/PhotoPage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method private canDoRotate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-nez v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    instance-of v1, v1, Lcom/miui/gallery/data/UriImage;

    if-nez v1, :cond_0

    .line 367
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canDoSlideShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 373
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    instance-of v1, v1, Lcom/miui/gallery/data/MtpDevice;

    if-nez v1, :cond_0

    .line 379
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPhotoCount()I
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hideBars()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 682
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 683
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    .line 684
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->dismissPopupWindow()V

    .line 685
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 688
    const/4 v0, 0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 689
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    .line 778
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->hide()V

    .line 779
    return-void
.end method

.method private initializeOperations()V
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p0, p0}, Lcom/miui/gallery/app/PhotoPage;->setViewListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v1, 0x7f0b0074

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, viewPlaySlideShow:Landroid/view/View;
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->canDoSlideShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private parsePath(Ljava/lang/String;)Lcom/miui/gallery/data/Path;
    .locals 8
    .parameter "mediaItemPath"

    .prologue
    .line 178
    invoke-static {p1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 179
    .local v3, path:Lcom/miui/gallery/data/Path;
    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, segment:[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 181
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, decoded:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 183
    .local v5, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "uri"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isVideoFromFilePath(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v1, v6}, Lcom/miui/gallery/data/DataManager;->getStorageMediaItemPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, itemPathString:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 195
    .end local v0           #decoded:Ljava/lang/String;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #itemPathString:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    return-object v3
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 694
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mIsInteracting:Z

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 698
    :cond_0
    return-void
.end method

.method private refreshIndexIndicator()V
    .locals 5

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->getPhotoCount()I

    move-result v0

    .line 562
    .local v0, count:I
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v3}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    .line 568
    .local v1, position:I
    const v3, 0x7f0b0075

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 569
    .local v2, t:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    return-void
.end method

.method private showBars()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 671
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 672
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    .line 673
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->dismissPopupWindow()V

    .line 674
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 675
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 677
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 678
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private showDetails(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    .line 783
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    new-instance v3, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DetailsHelper;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/GLView;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    .line 785
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    new-instance v1, Lcom/miui/gallery/app/PhotoPage$7;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/PhotoPage$7;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    .line 792
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->show()V

    .line 793
    return-void
.end method

.method private showMenu(I)V
    .locals 18
    .parameter "showType"

    .prologue
    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/app/PhotoPage;->showBars()V

    .line 575
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    .line 576
    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v14}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    .line 580
    .local v4, current:Lcom/miui/gallery/data/MediaItem;
    if-eqz v4, :cond_0

    .line 584
    const/4 v8, 0x0

    .line 585
    .local v8, popView:Landroid/view/View;
    const/4 v9, 0x0

    .line 586
    .local v9, popupWindowparent:Landroid/view/View;
    const/4 v6, 0x0

    .line 587
    .local v6, offsetXId:I
    const/4 v2, 0x0

    .line 588
    .local v2, animId:I
    const/4 v12, 0x0

    .line 589
    .local v12, titleView:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 590
    .local v3, contentList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 592
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f04000f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 593
    const v14, 0x7f0b0078

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v9

    .line 594
    const v14, 0x7f0b002b

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    const v14, 0x7f0b002c

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    const v14, 0x7f0b002a

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    const v14, 0x7f0b002e

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    const v14, 0x7f0b002d

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    const v2, 0x7f0e0032

    .line 601
    const v6, 0x7f090052

    .line 641
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v14}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 642
    .local v10, r:Landroid/content/res/Resources;
    new-instance v14, Landroid/widget/PopupWindow;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v8, v15, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 647
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 648
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v15, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v14, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v15, Lcom/miui/gallery/app/PhotoPage$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/miui/gallery/app/PhotoPage$6;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v14}, Landroid/widget/PopupWindow;->update()V

    .line 661
    const v14, 0x7f0b005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v13

    .line 662
    .local v13, viewUpper:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v7, v14, 0x2

    .line 663
    .local v7, offsetY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v9, v15, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 605
    .end local v7           #offsetY:I
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v13           #viewUpper:Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v14}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/miui/gallery/StorageExplorer/AppHelper;->getSendIntent(Landroid/content/Context;Lcom/miui/gallery/data/MediaItem;)Landroid/content/Intent;

    move-result-object v5

    .line 606
    .local v5, intent:Landroid/content/Intent;
    const-string v14, "android.intent.extra.TITLE"

    invoke-virtual {v5, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 607
    .local v11, title:Ljava/lang/String;
    const-string v14, "android.intent.extra.TITLE"

    invoke-virtual {v5, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 608
    new-instance v14, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v15}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15, v5}, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;-><init>(Lcom/miui/gallery/app/PhotoPage;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mSendListAdapter:Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

    .line 610
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f040005

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 611
    const v14, 0x7f0b0076

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v9

    .line 612
    const v14, 0x7f0200c5

    invoke-virtual {v8, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 613
    const v14, 0x7f0b0016

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #titleView:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 614
    .restart local v12       #titleView:Landroid/widget/TextView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    const v14, 0x7f0b0017

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #contentList:Landroid/widget/ListView;
    check-cast v3, Landroid/widget/ListView;

    .line 616
    .restart local v3       #contentList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mSendListAdapter:Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

    invoke-virtual {v3, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mSendListAdapter:Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

    invoke-virtual {v3, v14}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 619
    const v2, 0x7f0e0030

    .line 620
    const v6, 0x7f090054

    .line 621
    goto/16 :goto_1

    .line 624
    .end local v5           #intent:Landroid/content/Intent;
    .end local v11           #title:Ljava/lang/String;
    :pswitch_2
    new-instance v14, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mApplyListAdapter:Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f040005

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 626
    const v14, 0x7f0b0077

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v9

    .line 627
    const v14, 0x7f020007

    invoke-virtual {v8, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 628
    const v14, 0x7f0b0017

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #contentList:Landroid/widget/ListView;
    check-cast v3, Landroid/widget/ListView;

    .line 629
    .restart local v3       #contentList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mApplyListAdapter:Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;

    invoke-virtual {v3, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/PhotoPage;->mApplyListAdapter:Lcom/miui/gallery/app/PhotoPage$ApplyListAdapter;

    invoke-virtual {v3, v14}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 632
    const v2, 0x7f0e0031

    .line 633
    const v6, 0x7f090053

    .line 634
    goto/16 :goto_1

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V
    .locals 3
    .parameter "photo"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-ne v0, p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    .line 348
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    .line 349
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoView;->showVideoPlayIcon(Z)V

    .line 356
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->updateShareURI(Lcom/miui/gallery/data/Path;)V

    .line 357
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshIndexIndicator()V

    goto :goto_0

    .line 353
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateShareURI(Lcom/miui/gallery/data/Path;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 323
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    .line 325
    .local v1, manager:Lcom/miui/gallery/data/DataManager;
    invoke-virtual {v1, p1}, Lcom/miui/gallery/data/DataManager;->getMediaType(Lcom/miui/gallery/data/Path;)I

    move-result v2

    .line 326
    .local v2, type:I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/miui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, p1}, Lcom/miui/gallery/data/DataManager;->getContentUri(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 329
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v3, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 330
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mPendingSharePath:Lcom/miui/gallery/data/Path;

    .line 335
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #manager:Lcom/miui/gallery/data/DataManager;
    .end local v2           #type:I
    :goto_0
    return-void

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage;->mPendingSharePath:Lcom/miui/gallery/data/Path;

    goto :goto_0
.end method


# virtual methods
.method public dismissPopupWindow()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 342
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    .line 343
    return-void
.end method

.method protected onBackPressed()V
    .locals 4

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideDetails()V

    .line 752
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionRepository;->clear()V

    .line 741
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-eqz v1, :cond_1

    .line 742
    new-instance v1, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v1}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    .line 743
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 744
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 745
    const/high16 v2, -0x3b86

    iput v2, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    .line 746
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/ui/PositionRepository;->putPosition(Ljava/lang/Long;Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 750
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityStateFinishSelf;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const/4 v5, 0x2

    const v11, 0x7f0d00d0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 424
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v6

    .line 425
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 426
    if-nez v6, :cond_0

    .line 554
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v7

    .line 432
    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v8

    .line 433
    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v2

    if-ne v2, v5, :cond_2

    move v2, v3

    .line 435
    :goto_1
    iget-object v9, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v9}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v9

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 553
    :cond_1
    :goto_2
    :sswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 433
    goto :goto_1

    .line 438
    :sswitch_1
    if-eqz v2, :cond_3

    .line 439
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 440
    const-string v2, "media-set-path"

    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v2, "media-item-path"

    invoke-virtual {v8}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v2, "photo-index"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    const-string v2, "startfrom-thirdparty"

    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->isStartFromThirdParty()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    const-string v2, "repeat"

    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v4}, Lcom/miui/gallery/settings/PreferenceHelper;->isSlideshowRepeat()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v2

    const-class v4, Lcom/miui/gallery/app/SlideshowPage;

    invoke-virtual {v2, v4, v3, v1}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_2

    .line 449
    :cond_3
    invoke-static {v1, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 463
    :sswitch_2
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v1, v2}, Lcom/miui/gallery/StorageExplorer/AppHelper;->confirmDelete(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 467
    :sswitch_3
    iget-boolean v1, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_4

    .line 468
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideDetails()V

    goto :goto_2

    .line 470
    :cond_4
    invoke-direct {p0, v7}, Lcom/miui/gallery/app/PhotoPage;->showDetails(I)V

    goto :goto_2

    .line 475
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/miui/gallery/app/PhotoPage;->showMenu(I)V

    goto/16 :goto_0

    .line 480
    :sswitch_5
    if-eqz v2, :cond_5

    .line 481
    invoke-direct {p0, v5}, Lcom/miui/gallery/app/PhotoPage;->showMenu(I)V

    goto/16 :goto_0

    .line 484
    :cond_5
    invoke-static {v1, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 490
    :sswitch_6
    if-eqz v2, :cond_6

    .line 491
    invoke-direct {p0, v4}, Lcom/miui/gallery/app/PhotoPage;->showMenu(I)V

    goto/16 :goto_0

    .line 494
    :cond_6
    invoke-static {v1, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 501
    :sswitch_7
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->canDoRotate()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b002b

    if-ne v1, v2, :cond_7

    const/16 v1, -0x5a

    .line 503
    :goto_3
    invoke-virtual {v9, v8, v1}, Lcom/miui/gallery/data/DataManager;->rotate(Lcom/miui/gallery/data/Path;I)V

    .line 504
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    instance-of v1, v1, Lcom/miui/gallery/data/StorageMediaItem;

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->notifyDirty()V

    goto/16 :goto_2

    .line 502
    :cond_7
    const/16 v1, 0x5a

    goto :goto_3

    .line 510
    :cond_8
    invoke-static {v1, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 516
    :sswitch_8
    invoke-virtual {v9, v8}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    .line 519
    :try_start_0
    instance-of v3, v2, Lcom/miui/gallery/data/StorageMediaItem;

    if-eqz v3, :cond_9

    .line 520
    new-instance v5, Ljava/io/File;

    move-object v0, v2

    check-cast v0, Lcom/miui/gallery/data/StorageMediaItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 524
    :goto_4
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 529
    :catch_0
    move-exception v2

    .line 530
    const-string v3, "PhotoPage"

    const-string v5, "failed to start edit activity: "

    invoke-static {v3, v5, v2}, Lcom/miui/gallery/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 522
    :cond_9
    :try_start_1
    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_4

    .line 538
    :sswitch_9
    new-instance v3, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    const-class v2, Lcom/miui/gallery/app/CropImage;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 540
    invoke-virtual {v9, v8}, Lcom/miui/gallery/data/DataManager;->getContentUri(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 541
    invoke-static {v6}, Lcom/miui/gallery/picasasource/PicasaSource;->isPicasaImage(Lcom/miui/gallery/data/MediaObject;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    :goto_5
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_a
    move v2, v5

    goto :goto_5

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b002a -> :sswitch_9
        0x7f0b002b -> :sswitch_7
        0x7f0b002c -> :sswitch_7
        0x7f0b002d -> :sswitch_8
        0x7f0b002e -> :sswitch_0
        0x7f0b0073 -> :sswitch_3
        0x7f0b0074 -> :sswitch_1
        0x7f0b0076 -> :sswitch_4
        0x7f0b0077 -> :sswitch_5
        0x7f0b0078 -> :sswitch_6
        0x7f0b0079 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 12
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/ActivityStateFinishSelf;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    .line 202
    const v1, 0x7f0b0026

    const v2, 0x7f040018

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/app/PhotoPage;->inflatePageView(II)V

    .line 203
    new-instance v1, Lcom/miui/gallery/ui/SelectionManager;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 204
    new-instance v1, Lcom/miui/gallery/ui/MenuExecutor;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/ui/MenuExecutor;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/miui/gallery/ui/MenuExecutor;

    .line 205
    new-instance v1, Lcom/miui/gallery/settings/PreferenceHelper;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    .line 207
    new-instance v1, Lcom/miui/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/PhotoView;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    .line 208
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/ui/PhotoView;->setPhotoTapListener(Lcom/miui/gallery/ui/PhotoView$PhotoTapListener;)V

    .line 209
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/app/GalleryApp;

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 212
    const-string v1, "from-storage-explorer"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/PhotoPage;->mIsFromStorageExplorer:Z

    .line 213
    const-string v1, "media-set-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, setPathString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 218
    .local v4, itemPath:Lcom/miui/gallery/data/Path;
    if-nez v10, :cond_0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/app/PhotoPage;->mIsFromStorageExplorer:Z

    if-eqz v1, :cond_3

    .line 219
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/app/PhotoPage;->mIsFromStorageExplorer:Z

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/StateManager;->popPhotoPageData()Lcom/miui/gallery/app/StateManager$PhotoPageData;

    move-result-object v9

    .line 221
    .local v9, photoPagedata:Lcom/miui/gallery/app/StateManager$PhotoPageData;
    iget v1, v9, Lcom/miui/gallery/app/StateManager$PhotoPageData;->indexHint:I

    iput v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 222
    iget-object v1, v9, Lcom/miui/gallery/app/StateManager$PhotoPageData;->fileBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/DataManager;->getStorageMediaSetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 223
    iget-object v1, v9, Lcom/miui/gallery/app/StateManager$PhotoPageData;->fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v1, v1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    iget-object v2, v9, Lcom/miui/gallery/app/StateManager$PhotoPageData;->fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/data/DataManager;->getStorageMediaItemPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, itemPathString:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaSet;

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 228
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    check-cast v1, Lcom/miui/gallery/data/StorageMediaSet;

    iget-object v2, v9, Lcom/miui/gallery/app/StateManager$PhotoPageData;->fileBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/data/StorageMediaSet;->initBucket(Lcom/miui/gallery/StorageExplorer/FileBucket;)V

    .line 229
    invoke-static {v7}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 239
    .end local v7           #itemPathString:Ljava/lang/String;
    .end local v9           #photoPagedata:Lcom/miui/gallery/app/StateManager$PhotoPageData;
    :goto_0
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    iget v5, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/app/PhotoDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaSet;Lcom/miui/gallery/data/Path;I)V

    .line 241
    .local v0, pda:Lcom/miui/gallery/app/PhotoDataAdapter;
    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    .line 242
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoView;->setModel(Lcom/miui/gallery/ui/PhotoView$Model;)V

    .line 244
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    const-string v2, "index-hint"

    iget v3, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 247
    new-instance v1, Lcom/miui/gallery/app/PhotoPage$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/PhotoPage$2;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->setDataListener(Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;)V

    .line 301
    .end local v0           #pda:Lcom/miui/gallery/app/PhotoDataAdapter;
    :goto_1
    new-instance v1, Lcom/miui/gallery/app/PhotoPage$4;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/PhotoPage$4;-><init>(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 315
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/ui/PhotoView;->setOpenedItem(Lcom/miui/gallery/data/Path;)V

    .line 320
    :goto_2
    return-void

    .line 231
    :cond_1
    const-string v1, "index-hint"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 232
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaSet;

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 234
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-nez v1, :cond_2

    .line 235
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to restore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    const-string v1, "media-item-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    goto :goto_0

    .line 284
    :cond_3
    const-string v1, "media-item-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/PhotoPage;->parsePath(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 287
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/data/MediaItem;

    .line 289
    .local v8, mediaItem:Lcom/miui/gallery/data/MediaItem;
    new-instance v11, Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-direct {v11, v1, v2, v8}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaItem;)V

    .line 290
    .local v11, spda:Lcom/miui/gallery/app/SinglePhotoDataAdapter;
    new-instance v1, Lcom/miui/gallery/app/PhotoPage$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/PhotoPage$3;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    invoke-virtual {v11, v1}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->setDataListener(Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;)V

    .line 296
    iput-object v11, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    .line 297
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoView;->setModel(Lcom/miui/gallery/ui/PhotoView$Model;)V

    .line 298
    invoke-direct {p0, v8}, Lcom/miui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 316
    .end local v8           #mediaItem:Lcom/miui/gallery/data/MediaItem;
    .end local v11           #spda:Lcom/miui/gallery/app/SinglePhotoDataAdapter;
    :catch_0
    move-exception v6

    .line 317
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    goto/16 :goto_2
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    .line 767
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 768
    const/4 v0, 0x1

    return v0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 756
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->onUserInteractionTap()V

    .line 760
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/ActivityStateFinishSelf;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityStateFinishSelf;->onPause()V

    .line 867
    invoke-static {}, Lcom/miui/gallery/ui/DetailsHelper;->pause()V

    .line 869
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->pause()V

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    if-eqz v0, :cond_2

    .line 873
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->pause()V

    .line 875
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 876
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/miui/gallery/ui/MenuExecutor;

    if-eqz v0, :cond_4

    .line 879
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/miui/gallery/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/MenuExecutor;->pause()V

    .line 883
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->setViewListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 888
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityStateFinishSelf;->onResume()V

    .line 890
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->initializeOperations()V

    .line 892
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 893
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->resume()V

    .line 894
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->resume()V

    .line 895
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 896
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->onUserInteraction()V

    .line 897
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshIndexIndicator()V

    .line 898
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 796
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 797
    .local v1, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v1, :cond_0

    .line 819
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    move v2, v4

    .line 805
    .local v2, playVideo:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 808
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v3

    .line 809
    .local v3, w:I
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v0

    .line 810
    .local v0, h:I
    div-int/lit8 v6, v3, 0x2

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xc

    if-gt v6, v3, :cond_3

    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xc

    if-gt v6, v0, :cond_3

    move v2, v4

    .line 814
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_1
    :goto_2
    if-eqz v2, :cond_4

    .line 815
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/GalleryUtils;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #playVideo:Z
    :cond_2
    move v2, v5

    .line 802
    goto :goto_1

    .restart local v0       #h:I
    .restart local v2       #playVideo:Z
    .restart local v3       #w:I
    :cond_3
    move v2, v5

    .line 810
    goto :goto_2

    .line 817
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->onUserInteractionTap()V

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 829
    packed-switch p1, :pswitch_data_0

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 831
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 832
    if-eqz p3, :cond_0

    .line 833
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_0

    .line 836
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    iget v2, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v1, v0, v2}, Lcom/miui/gallery/app/PhotoPage$Model;->setCurrentPhoto(Lcom/miui/gallery/data/Path;I)V

    goto :goto_0

    .line 841
    :pswitch_1
    if-ne p2, v0, :cond_1

    const v0, 0x7f0d006b

    .line 844
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 841
    :cond_1
    const v0, 0x7f0d006c

    goto :goto_1

    .line 849
    :pswitch_2
    if-eqz p3, :cond_0

    .line 850
    const-string v0, "media-item-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    const-string v1, "photo-index"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 852
    if-eqz v0, :cond_0

    .line 853
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/miui/gallery/app/PhotoPage$Model;->setCurrentPhoto(Lcom/miui/gallery/data/Path;I)V

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideBars()V

    .line 703
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    .line 704
    return-void
.end method

.method public onUserInteractionBegin()V
    .locals 1

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->showBars()V

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mIsInteracting:Z

    .line 720
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    .line 721
    return-void
.end method

.method public onUserInteractionEnd()V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mIsInteracting:Z

    .line 730
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    .line 732
    :cond_0
    return-void
.end method

.method public onUserInteractionTap()V
    .locals 2

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideBars()V

    .line 709
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->showBars()V

    .line 712
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0
.end method

.method setViewListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 383
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void
.end method
