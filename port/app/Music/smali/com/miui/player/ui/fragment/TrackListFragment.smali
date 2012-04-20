.class public Lcom/miui/player/ui/fragment/TrackListFragment;
.super Landroid/app/Fragment;
.source "TrackListFragment.java"

# interfaces
.implements Lcom/miui/player/model/TrackListAdapter$TrackBrowser;
.implements Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;
.implements Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;
.implements Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/fragment/TrackListFragment$NowplayingScrollListener;
    }
.end annotation


# static fields
.field private static final ADD_TRACKS:I = 0x77

.field private static final HEADER_ID_ADD_TRACK:I = -0x1

.field private static final HEADER_ID_SHUFFLE:I = -0x2

.field private static final TAG:Ljava/lang/String;

.field private static final sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;


# instance fields
.field private mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

.field mAdapter:Lcom/miui/player/model/TrackListAdapter;

.field private mAdapterUpdateRunnable:Ljava/lang/Runnable;

.field private mAddTracks:Landroid/view/View;

.field private mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mArtistId:J

.field private mArtistName:Ljava/lang/String;

.field private mCachedNum:I

.field private mCursor:Landroid/database/Cursor;

.field private mEditMode:Z

.field private mFolderPath:Ljava/lang/String;

.field private mLeftAlign:I

.field private mListView:Landroid/widget/ListView;

.field private mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/menu/BaseMenuManager",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

.field private mPlaylistId:Ljava/lang/String;

.field private mShuffleAll:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/fragment/TrackListFragment;->TAG:Ljava/lang/String;

    .line 441
    new-instance v0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-direct {v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;-><init>()V

    sput-object v0, Lcom/miui/player/ui/fragment/TrackListFragment;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    .line 61
    iput-wide v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    .line 62
    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    .line 63
    iput-wide v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    .line 64
    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mFolderPath:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    .line 449
    new-instance v0, Lcom/miui/player/ui/fragment/TrackListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/fragment/TrackListFragment$1;-><init>(Lcom/miui/player/ui/fragment/TrackListFragment;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    .line 548
    return-void
.end method

.method private initAsNowplaying()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "nowplaying"

    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    .line 129
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    .line 130
    return-void
.end method

.method private useLastListPosition()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 443
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 403
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    .line 404
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_0
    instance-of v4, v1, Lcom/miui/player/model/NowplayingCursor;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 410
    check-cast v0, Lcom/miui/player/model/NowplayingCursor;

    .line 411
    .local v0, c:Lcom/miui/player/model/NowplayingCursor;
    invoke-virtual {v0, p1, p2}, Lcom/miui/player/model/NowplayingCursor;->moveItem(II)V

    goto :goto_0

    .line 413
    .end local v0           #c:Lcom/miui/player/model/NowplayingCursor;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v2

    .line 415
    .local v2, plid:J
    iget-object v4, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/base/TemplateListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3, p1, p2}, Lcom/miui/player/provider/PlayerProvider;->moveItem(Landroid/content/ContentResolver;JII)Z

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    return-object v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 594
    iget-wide v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedTrackNum()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    return v0
.end method

.method public getContextInfo()Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    .locals 3

    .prologue
    .line 462
    new-instance v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;-><init>()V

    .line 463
    .local v0, ctx:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    iget-wide v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    iput-wide v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAlbumId:J

    .line 464
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAlbumName:Ljava/lang/String;

    .line 465
    iget-wide v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    iput-wide v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mArtistId:J

    .line 466
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mArtistName:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 468
    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    iput-boolean v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mEditMode:Z

    .line 469
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iput v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mHeaderCount:I

    .line 470
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mPlaylistId:J

    .line 471
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 473
    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNowplayingIndicatorMarginTop()I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/NowplayingIndicator;->getLayoutMarginTop()I

    move-result v0

    .line 663
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaylistId()J
    .locals 5

    .prologue
    .line 571
    const-wide/16 v1, -0x1

    .line 572
    .local v1, playlistId:J
    const-string v3, "nowplaying"

    iget-object v4, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    const-wide/16 v1, 0x0

    .line 582
    :goto_0
    return-wide v1

    .line 576
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/miui/player/ui/fragment/TrackListFragment;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 4
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-nez v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 324
    .local v0, first:Z
    :goto_1
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v1, p2}, Lcom/miui/player/model/TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 325
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    invoke-virtual {v2}, Lcom/miui/player/ui/controller/NowplayingIndicator;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/model/TrackListAdapter;->setViewHolder(Landroid/view/View;)V

    .line 327
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->updateNowplayingFrame()V

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 337
    const-string v1, "nowplaying"

    iget-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v2

    iget-object v3, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 323
    .end local v0           #first:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 339
    .restart local v0       #first:Z
    :cond_4
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->useLastListPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    sget-object v1, Lcom/miui/player/ui/fragment/TrackListFragment;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->restoreListPosition(Landroid/widget/ListView;)V

    goto :goto_0
.end method

.method public initLeftMargin(I)V
    .locals 3
    .parameter "leftMargin"

    .prologue
    const/4 v2, 0x0

    .line 256
    iput p1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mLeftAlign:I

    .line 257
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mLeftAlign:I

    invoke-static {v0, v1, v2, v2, v2}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 258
    return-void
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->isMultiChoiceModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isIndicateNowplaying()Z
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiChoiceModeEnabled()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSortable()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    return v0
.end method

.method public isWorking()Z
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->leave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x1

    .line 485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackListAdapter;->notifyDataSetChanged()V

    .line 270
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    .line 297
    packed-switch p1, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 299
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 300
    const-string v0, "playlist_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 301
    .local v2, playlistId:J
    const-string v0, "track_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 302
    .local v1, trackIds:[J
    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 303
    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 310
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    goto :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/miui/player/ui/base/TemplateListActivity;

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    .line 93
    iget-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/base/TemplateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.miui.player.NOWPLAYING_PLAYLIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.miui.player.PLAYBACK_VIEWER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->initAsNowplaying()V

    .line 124
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-void

    .line 103
    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 107
    :cond_2
    if-nez p1, :cond_3

    .line 108
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 109
    .restart local p1
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "icicle is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3
    const-string v2, "album_id"

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    .line 113
    const-string v2, "album_name"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    .line 115
    const-string v2, "artist_id"

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    .line 116
    const-string v2, "artist_name"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    .line 118
    const-string v2, "playlist_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    .line 119
    const-string v2, "editmode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    .line 121
    const-string v2, "folder_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mFolderPath:Ljava/lang/String;

    .line 123
    const-string v2, "item_num"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    .line 134
    const v2, 0x7f030038

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 135
    .local v16, fragment:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    .line 137
    .local v13, a:Lcom/miui/player/ui/base/TemplateListActivity;
    const v2, 0x102000a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 138
    .local v17, lv:Landroid/widget/ListView;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    .line 140
    const v2, 0x7f0c009e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 141
    .local v18, nowPlayingFrame:Landroid/view/View;
    const/16 v20, 0x0

    .line 142
    .local v20, scrollListener:Landroid/widget/AbsListView$OnScrollListener;
    const-string v2, "nowplaying"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    new-instance v2, Lcom/miui/player/ui/controller/NowplayingIndicator;

    const v3, 0x7f0c003e

    move-object/from16 v0, v18

    invoke-direct {v2, v0, v3}, Lcom/miui/player/ui/controller/NowplayingIndicator;-><init>(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    .line 144
    new-instance v20, Lcom/miui/player/ui/fragment/TrackListFragment$NowplayingScrollListener;

    .end local v20           #scrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-direct/range {v20 .. v21}, Lcom/miui/player/ui/fragment/TrackListFragment$NowplayingScrollListener;-><init>(Lcom/miui/player/ui/fragment/TrackListFragment;)V

    .line 149
    .restart local v20       #scrollListener:Landroid/widget/AbsListView$OnScrollListener;
    :goto_0
    new-instance v2, Lcom/miui/player/ui/menu/TrackBrowserMenu;

    const v3, 0x7f090007

    const-string v4, "_id"

    move-object/from16 v0, p0

    invoke-direct {v2, v13, v0, v3, v4}, Lcom/miui/player/ui/menu/TrackBrowserMenu;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    .line 153
    new-instance v2, Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    const v4, 0x7f0c000d

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3, v4}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->setOnModeChangedListener(Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 159
    const v2, 0x7f0c000a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/miui/player/ui/view/AlphabetFastIndexer;

    .line 160
    .local v15, fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    const/4 v14, 0x1

    .line 161
    .local v14, alphabetSort:Z
    :goto_1
    if-eqz v14, :cond_5

    .line 162
    const v2, 0x7f0c000a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    check-cast v15, Lcom/miui/player/ui/view/AlphabetFastIndexer;

    .line 163
    .restart local v15       #fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->setVisibility(I)V

    .line 164
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->attatch(Landroid/widget/AbsListView;)V

    .line 165
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v20

    .line 172
    :goto_2
    if-eqz v20, :cond_0

    .line 173
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 176
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v2, :cond_1

    .line 177
    const/4 v2, -0x1

    const v3, 0x7f020003

    const v4, 0x7f0800b8

    invoke-static {v13, v2, v3, v4}, Lcom/miui/player/ui/UIHelper;->makeHeaderView(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAddTracks:Landroid/view/View;

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAddTracks:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    move-object/from16 v2, v17

    .line 179
    check-cast v2, Lcom/miui/player/ui/view/SortableListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/view/SortableListView;->setOnOrderChangedListener(Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;)V

    .line 182
    :cond_1
    const-string v2, "nowplaying"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 183
    .local v9, nowplaying:Z
    if-nez v9, :cond_2

    .line 184
    const/4 v2, -0x2

    const v3, 0x7f020096

    const v4, 0x7f08009b

    invoke-static {v13, v2, v3, v4}, Lcom/miui/player/ui/UIHelper;->makeHeaderView(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mShuffleAll:Landroid/view/View;

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mShuffleAll:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 187
    :cond_2
    new-instance v2, Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v13}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v4, :cond_6

    const v5, 0x7f030011

    :goto_3
    const/4 v6, 0x0

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-array v8, v4, [I

    if-eqz v14, :cond_7

    move-object v10, v15

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v4, :cond_8

    move-object/from16 v4, v17

    check-cast v4, Lcom/miui/player/ui/view/SortableListView;

    move-object v11, v4

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v12}, Lcom/miui/player/model/TrackListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/model/TrackListAdapter$TrackBrowser;ILandroid/database/Cursor;[Ljava/lang/String;[IZLcom/miui/player/ui/view/AlphabetFastIndexer;Lcom/miui/player/ui/view/SortableListView;Lcom/miui/player/ui/controller/MultiChoiceController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_9

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Lcom/miui/player/model/TrackListAdapter;->setNowplayingBgVisible(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    if-eqz v14, :cond_a

    invoke-virtual {v15}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->getIndexerIntrinsicWidth()I

    move-result v19

    .line 204
    .local v19, right:I
    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v2, v3, v1, v4}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 206
    return-object v16

    .line 146
    .end local v9           #nowplaying:Z
    .end local v14           #alphabetSort:Z
    .end local v15           #fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    .end local v19           #right:I
    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 160
    .restart local v15       #fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 168
    .restart local v14       #alphabetSort:Z
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 169
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->setVisibility(I)V

    goto/16 :goto_2

    .line 187
    .restart local v9       #nowplaying:Z
    :cond_6
    const v5, 0x7f030039

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    .line 198
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 203
    :cond_a
    const/16 v19, 0x0

    goto :goto_7
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    .line 212
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->useLastListPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/miui/player/ui/fragment/TrackListFragment;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->saveListPosition(Landroid/widget/ListView;)V

    .line 216
    :cond_0
    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v1, :cond_1

    .line 218
    check-cast v0, Lcom/miui/player/ui/view/SortableListView;

    .end local v0           #lv:Landroid/widget/ListView;
    invoke-virtual {v0, v2}, Lcom/miui/player/ui/view/SortableListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/player/model/TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 234
    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    .line 236
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 237
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 680
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 682
    if-eqz p1, :cond_1

    .line 683
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "v"
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
    .line 346
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    if-eq p1, v9, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    sub-int/2addr p3, v9

    .line 351
    if-gez p3, :cond_3

    .line 352
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 353
    .local v8, tag:Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 354
    check-cast v8, Ljava/lang/Integer;

    .end local v8           #tag:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 355
    .local v3, headerId:I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v6

    .line 357
    .local v6, plid:J
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-ltz v9, :cond_0

    .line 358
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.miui.player.TRACK_PICKER"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "playlist_id"

    invoke-virtual {v4, v9, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 360
    const/16 v9, 0x77

    invoke-virtual {p0, v4, v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 362
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #plid:J
    :cond_2
    const/4 v9, -0x2

    if-ne v3, v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    .line 363
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v10, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v9, v10}, Lcom/miui/player/service/ServiceHelper;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 370
    .end local v3           #headerId:I
    :cond_3
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 376
    const-wide/16 v1, -0x1

    .line 377
    .local v1, current:J
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 378
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 380
    .local v5, oldPos:I
    :try_start_0
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 381
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v9}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 382
    .local v0, audioIdx:I
    if-ltz v0, :cond_4

    .line 383
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 386
    :cond_4
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 390
    .end local v0           #audioIdx:I
    .end local v5           #oldPos:I
    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-ltz v9, :cond_6

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-nez v9, :cond_6

    .line 391
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->pause()V

    goto/16 :goto_0

    .line 386
    .restart local v5       #oldPos:I
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v9

    .line 393
    .end local v5           #oldPos:I
    :cond_6
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    instance-of v9, v9, Lcom/miui/player/model/NowplayingCursor;

    if-eqz v9, :cond_7

    .line 394
    invoke-static {p3}, Lcom/miui/player/service/ServiceHelper;->toggleQueuePosition(I)V

    goto/16 :goto_0

    .line 396
    :cond_7
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v10, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v9, v10, p3}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto/16 :goto_0
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 5
    .parameter "enabled"
    .parameter "lv"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 421
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v1, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 422
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAddTracks:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAddTracks:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v1, v2}, Lcom/miui/player/ui/UIHelper;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mShuffleAll:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mShuffleAll:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    :goto_1
    invoke-static {v1, v3}, Lcom/miui/player/ui/UIHelper;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 429
    :cond_1
    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v1, :cond_3

    .line 430
    iget v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mLeftAlign:I

    iget-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/base/TemplateListActivity;->getDefaultMargin()I

    move-result v2

    sub-int v0, v1, v2

    .line 431
    .local v0, delta:I
    if-eqz p1, :cond_2

    .line 432
    neg-int v0, v0

    .line 434
    :cond_2
    invoke-static {p2, v0, v4, v4, v4}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 436
    .end local v0           #delta:I
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 423
    goto :goto_0

    :cond_5
    move v3, v4

    .line 427
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 263
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->notifyDataSetChanged()V

    .line 264
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 241
    const-string v0, "artist_id"

    iget-wide v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 242
    const-string v0, "artist_name"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "album_id"

    iget-wide v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 245
    const-string v0, "album_name"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "playlist_name"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v0, "folder_path"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "item_num"

    iget v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 253
    return-void
.end method

.method public playAnimation(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 668
    if-eqz p1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 670
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 675
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 676
    return-void

    .line 672
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 673
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v2, 0x10a0006

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method setNowplayingFrame(III)V
    .locals 12
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 501
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    if-nez v9, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v9}, Lcom/miui/player/ui/base/TemplateListActivity;->isBatchSelectionModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 506
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/miui/player/ui/controller/NowplayingIndicator;->setVisible(Z)V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/miui/player/ui/controller/NowplayingIndicator;->setVisible(Z)V

    .line 510
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v6

    .line 511
    .local v6, queuePos:I
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    add-int v3, v6, v9

    .line 513
    .local v3, itemPos:I
    const/4 v0, 0x0

    .line 514
    .local v0, contentVisible:Z
    const/16 v1, 0x30

    .line 515
    .local v1, gravity:I
    const/4 v7, 0x0

    .line 517
    .local v7, topMargin:I
    if-gt v3, p1, :cond_4

    .line 518
    const/4 v0, 0x1

    .line 519
    const/16 v1, 0x30

    .line 520
    const/4 v7, 0x0

    .line 538
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    invoke-virtual {v9, v0}, Lcom/miui/player/ui/controller/NowplayingIndicator;->setContentVisible(Z)V

    .line 539
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    invoke-virtual {v9, v1, v7}, Lcom/miui/player/ui/controller/NowplayingIndicator;->setLayoutParams(II)V

    .line 540
    if-eqz v0, :cond_0

    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    .line 541
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 542
    .local v5, oldPos:I
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 543
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    iget-object v10, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    iget-object v11, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v9, v10, v11}, Lcom/miui/player/ui/controller/NowplayingIndicator;->bindView(Landroid/widget/CursorAdapter;Landroid/database/Cursor;)V

    .line 544
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 521
    .end local v5           #oldPos:I
    :cond_4
    add-int v9, p1, p2

    add-int/lit8 v9, v9, -0x1

    if-lt v3, v9, :cond_5

    if-ge p2, p3, :cond_5

    .line 522
    const/4 v0, 0x1

    .line 523
    const/16 v1, 0x50

    .line 524
    const/4 v7, 0x0

    goto :goto_1

    .line 526
    :cond_5
    const/4 v0, 0x0

    .line 527
    const/16 v1, 0x30

    .line 528
    iget-object v4, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    .line 529
    .local v4, lv:Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v2, v3, v9

    .line 530
    .local v2, index:I
    if-ltz v2, :cond_3

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 531
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 532
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_3

    .line 533
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_1
.end method

.method public setSwitchListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mNowplayingIndicator:Lcom/miui/player/ui/controller/NowplayingIndicator;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/controller/NowplayingIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 638
    iput-object p1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    .line 639
    const/4 v0, 0x1

    .line 642
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNowplayingFrame()V
    .locals 5

    .prologue
    .line 492
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    .line 493
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 494
    .local v0, firstVisibleItem:I
    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v3, v4, 0x1

    .line 495
    .local v3, visibleItemCount:I
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 497
    .local v2, totalItemCount:I
    invoke-virtual {p0, v0, v3, v2}, Lcom/miui/player/ui/fragment/TrackListFragment;->setNowplayingFrame(III)V

    .line 498
    return-void
.end method
