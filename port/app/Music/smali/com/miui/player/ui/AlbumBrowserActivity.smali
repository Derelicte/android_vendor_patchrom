.class public Lcom/miui/player/ui/AlbumBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;
    }
.end annotation


# static fields
.field static sAlbumDownloadListener:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

.field static sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

.field private static sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;


# instance fields
.field mAdapter:Lcom/miui/player/model/AlbumListAdapter;

.field private mAllTracks:Landroid/view/View;

.field private mArtistId:J

.field private mArtistName:Ljava/lang/String;

.field private mCachedSongNum:I

.field private mCursor:Landroid/database/Cursor;

.field mDelayedHandler:Landroid/os/Handler;

.field final mDownloadAlbumRunnable:Ljava/lang/Runnable;

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

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-direct {v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;-><init>()V

    sput-object v0, Lcom/miui/player/ui/AlbumBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    .line 333
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$1;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    return-void
.end method

.method private getSongNumForArtist()I
    .locals 2

    .prologue
    .line 461
    iget v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    if-gez v0, :cond_0

    .line 462
    iget-wide v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-static {p0, v0, v1}, Lcom/miui/player/provider/MediaProviderHelper;->getTrackCount(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    .line 464
    :cond_0
    iget v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    return v0
.end method

.method private setTitleBar()V
    .locals 10

    .prologue
    .line 191
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 192
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 197
    .local v5, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    iget-wide v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 198
    const-string v6, "artist"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, artist:Ljava/lang/String;
    iget-wide v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-static {p0, v6, v7}, Lcom/miui/player/provider/MediaProviderHelper;->getAlbumCount(Landroid/content/Context;J)I

    move-result v3

    .line 200
    .local v3, numalbums:I
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getSongNumForArtist()I

    move-result v4

    .line 201
    .local v4, numsongs:I
    invoke-static {p0, v3, v4, v0}, Lcom/miui/player/ui/UIHelper;->makeAlbumsLabel(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, details:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 203
    iget-object v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v5, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    .end local v0           #artist:Ljava/lang/String;
    .end local v2           #details:Ljava/lang/String;
    .end local v3           #numalbums:I
    .end local v4           #numsongs:I
    :cond_2
    const-wide/16 v6, -0x1

    invoke-static {p0, v6, v7}, Lcom/miui/player/provider/MediaProviderHelper;->getAlbumCount(Landroid/content/Context;J)I

    move-result v3

    .line 207
    .restart local v3       #numalbums:I
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090003

    invoke-virtual {v6, v7, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 208
    .local v2, details:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 209
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v5, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public downloadAllAlbums()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    const/4 v0, 0x1

    .line 404
    .local v0, started:Z
    sget-object v2, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    invoke-virtual {v2}, Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Lcom/miui/player/ui/AlbumBrowserActivity;->sAlbumDownloadListener:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

    invoke-static {v2, v3}, Lcom/miui/player/network/AlbumDownloader;->downloadAll(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    move-result-object v2

    sput-object v2, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    .line 406
    sget-object v2, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 408
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 409
    const v2, 0x7f080086

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 413
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 406
    goto :goto_0

    .line 411
    :cond_2
    const v2, 0x7f080005

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    return-object v0
.end method

.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 277
    const/4 v3, 0x0

    .line 278
    .local v3, where:Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidAlbumIdCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 280
    .local v9, set:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 282
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v6, v5}, Lcom/miui/player/util/SqlUtils;->concatIdsAsSet(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_0
    const/4 v1, 0x0

    .line 289
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 290
    .local v2, cols:[Ljava/lang/String;
    iget-wide v10, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-ltz v5, :cond_2

    .line 291
    const-string v5, "external"

    iget-wide v10, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-static {v5, v10, v11}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 292
    if-eqz v9, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " audio.album_id  IN "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    :goto_0
    sget-object v2, Lcom/miui/player/model/AlbumListAdapter;->ALBUM_ARTIST_COLUMNS:[Ljava/lang/String;

    .line 300
    :goto_1
    new-instance v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v0, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    new-instance v7, Lcom/miui/player/model/AlbumListAdapter$AlbumConverter;

    invoke-direct {v7}, Lcom/miui/player/model/AlbumListAdapter$AlbumConverter;-><init>()V

    .line 302
    .local v7, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    new-instance v8, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;

    invoke-direct {v8, v7, v14}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 303
    .local v8, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    new-instance v4, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v4, v8, v0}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    return-object v4

    .line 284
    .end local v0           #args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    .end local v8           #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #cols:[Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 292
    goto :goto_0

    .line 295
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 296
    if-eqz v9, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " _id  IN "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    :goto_2
    sget-object v2, Lcom/miui/player/model/AlbumListAdapter;->ALBUM_COLUMNS:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 296
    goto :goto_2
.end method

.method public getMenuContextInfo()Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;-><init>()V

    .line 381
    .local v0, ctx:Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 382
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iput v1, v0, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->mHeaderCount:I

    .line 384
    return-object v0
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.player.playstatechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.player.playbackcomplete"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 3
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 313
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 314
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    if-nez v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    .line 320
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 321
    .local v0, first:Z
    :goto_1
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v1, p2}, Lcom/miui/player/model/AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 322
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 326
    if-eqz v0, :cond_2

    .line 327
    sget-object v1, Lcom/miui/player/ui/AlbumBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->restoreListPosition(Landroid/widget/ListView;)V

    .line 330
    :cond_2
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setTitleBar()V

    goto :goto_0

    .line 320
    .end local v0           #first:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceNotification(Landroid/content/Intent;)V

    .line 431
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 438
    .local v1, refresh:Z
    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 439
    const/4 v1, 0x1

    .line 445
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 446
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/AlbumListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 440
    :cond_3
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "meta_changed_track"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->leave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeHeaderView(IIILjava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .parameter "headerId"
    .parameter "iconId"
    .parameter "titleId"
    .parameter "details"

    .prologue
    .line 451
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 454
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 456
    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateContent(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 95
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 96
    .restart local p1
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "icicle is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    const-string v0, "artist_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    .line 100
    const-string v0, "artist_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    .line 102
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 104
    .local v13, lv:Landroid/widget/ListView;
    iput-object v13, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    .line 106
    iget-wide v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getSongNumForArtist()I

    move-result v11

    .line 108
    .local v11, count:I
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 109
    .local v12, details:Ljava/lang/String;
    const/4 v0, 0x1

    const v1, 0x7f02000b

    const v2, 0x7f080061

    invoke-virtual {p0, v0, v1, v2, v12}, Lcom/miui/player/ui/AlbumBrowserActivity;->makeHeaderView(IIILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAllTracks:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAllTracks:Landroid/view/View;

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 116
    .end local v11           #count:I
    .end local v12           #details:Ljava/lang/String;
    :cond_2
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/player/ui/view/AlphabetFastIndexer;

    .line 117
    .local v9, fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    invoke-virtual {v9, v13}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->attatch(Landroid/widget/AbsListView;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    new-instance v0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;

    const v1, 0x7f090008

    const-string v2, "_id"

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    .line 124
    new-instance v0, Lcom/miui/player/ui/controller/MultiChoiceController;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    const v2, 0x7f0c000d

    invoke-direct {v0, v13, v1, v2}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;I)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 125
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 127
    new-instance v0, Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030002

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-array v6, v2, [I

    iget-wide v7, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    iget-object v10, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/miui/player/model/AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IJLcom/miui/player/ui/view/AlphabetFastIndexer;Lcom/miui/player/ui/controller/MultiChoiceController;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    .line 138
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/model/AlbumListAdapter;->startCache(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 142
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 143
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setNavigatorRes(I)V

    .line 145
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/TitleBarController;->getNavigatorWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->getIndexerIntrinsicWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v13, v0, v1, v2, v3}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 147
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    invoke-static {}, Lcom/miui/player/model/AlbumListAdapter;->quitCache()V

    .line 163
    sget-object v0, Lcom/miui/player/ui/AlbumBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->saveListPosition(Landroid/widget/ListView;)V

    .line 168
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/model/AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 174
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 178
    :cond_1
    iput-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    .line 179
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 180
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 224
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr p3, v4

    .line 226
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.miui.player.BROWSER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    .line 229
    .local v0, artist:Ljava/lang/String;
    if-ltz p3, :cond_0

    .line 230
    const-string v4, "album_id"

    invoke-virtual {v2, v4, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 234
    .local v3, nameIdx:I
    const-string v4, "album_name"

    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    if-nez v0, :cond_0

    .line 237
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, artistIdx:I
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    .end local v1           #artistIdx:I
    .end local v3           #nameIdx:I
    :cond_0
    const-string v4, "artist_id"

    iget-wide v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 243
    const-string v4, "artist_name"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 2
    .parameter "enabled"
    .parameter "lv"

    .prologue
    .line 469
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 470
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAllTracks:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAllTracks:Landroid/view/View;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 474
    :cond_0
    return-void

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 249
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 250
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 251
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumListAdapter;->notifyDataSetChanged()V

    .line 188
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 152
    const-string v0, "artist_id"

    iget-wide v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    const-string v0, "artist_name"

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 265
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 266
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
