.class public Lcom/miui/player/ui/PlaylistBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/ui/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;,
        Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    }
.end annotation


# static fields
.field private static sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;


# instance fields
.field mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

.field private mAdapterUpdateRunnable:Ljava/lang/Runnable;

.field private mCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mPresetItems:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-direct {v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;-><init>()V

    sput-object v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 591
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$1;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getPlaylistId(J)J
    .locals 2
    .parameter "itemId"

    .prologue
    .line 268
    const-wide/16 v0, -0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 269
    const-wide/16 p1, 0x0

    .line 274
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 270
    .restart local p1
    :cond_1
    const-wide/16 v0, -0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 271
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide p1

    goto :goto_0
.end method

.method private getRecentlyAddedIds()[J
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 386
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 387
    .local v2, ccols:[Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->recentlyWhere(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 388
    .local v10, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v10}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 391
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 393
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 394
    .local v8, len:I
    new-array v9, v8, [J

    .line 395
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 396
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 397
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :goto_1
    return-object v9

    .line 400
    :catch_0
    move-exception v0

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v4

    .line 406
    goto :goto_1

    .line 402
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSeletedTrackIds(J)[J
    .locals 5
    .parameter "itemId"

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, list:[J
    const-wide/16 v3, -0x2

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getRecentlyAddedIds()[J

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 282
    :cond_0
    move-wide v1, p1

    .line 283
    .local v1, playlistId:J
    const-wide/16 v3, -0x4

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 284
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v1

    .line 287
    :cond_1
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/miui/player/provider/PlaylistHelper;->getTrackListForPlaylist(Landroid/content/Context;JLjava/lang/String;)[J

    move-result-object v0

    goto :goto_0
.end method

.method private initilizePresetItems()V
    .locals 6

    .prologue
    .line 433
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    const/4 v3, -0x1

    const v4, 0x7f0800b0

    const v5, 0x7f020087

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;-><init>(Landroid/content/Context;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    const/4 v3, -0x2

    const v4, 0x7f0800b1

    const v5, 0x7f020089

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;-><init>(Landroid/content/Context;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    const/4 v3, -0x3

    const v4, 0x7f0800b2

    const v5, 0x7f020088

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;-><init>(Landroid/content/Context;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    const/4 v3, -0x4

    const v4, 0x7f0800b3

    const v5, 0x7f020086

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;-><init>(Landroid/content/Context;III)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetItems:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    .line 446
    return-void
.end method

.method private parseMenuIntent(Landroid/content/Intent;)J
    .locals 3
    .parameter "extras"

    .prologue
    const-wide/16 v0, -0xa

    .line 261
    if-eqz p1, :cond_0

    .line 262
    const-string v2, "src_playlist"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 264
    :cond_0
    return-wide v0
.end method

.method private setTitleBar()V
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 150
    .local v1, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->getPlaylistCount(Landroid/content/Context;)I

    move-result v0

    .line 151
    .local v0, count:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090005

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method


# virtual methods
.method public findPresetItem(J)Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    .locals 6
    .parameter "itemId"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetItems:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    .local v0, arr$:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 450
    .local v2, item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    iget v4, v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mItemId:I

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 455
    .end local v2           #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :goto_1
    return-object v2

    .line 449
    .restart local v2       #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v2           #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    return-object v0
.end method

.method public getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 512
    const-string v8, "name != \'\' AND list_type=0"

    .line 515
    .local v8, where:Ljava/lang/String;
    new-instance v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/player/model/PlaylistListAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    const-string v3, "name != \'\' AND list_type=0"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .local v0, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    new-instance v6, Lcom/miui/player/model/PlaylistListAdapter$PlaylistConverter;

    invoke-direct {v6}, Lcom/miui/player/model/PlaylistListAdapter$PlaylistConverter;-><init>()V

    .line 523
    .local v6, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    new-instance v7, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetItems:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    invoke-direct {v7, v6, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;)V

    .line 525
    .local v7, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    new-instance v1, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v1, v7, v0}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    return-object v1
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 569
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.queuechanged"

    aput-object v2, v0, v1

    .line 573
    .local v0, actions:[Ljava/lang/String;
    return-object v0
.end method

.method public getPresetRecordCount(I)I
    .locals 4
    .parameter "itemId"

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, count:I
    packed-switch p1, :pswitch_data_0

    .line 474
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 475
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 479
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    :pswitch_0
    return v0

    .line 465
    :pswitch_1
    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->getRecentlyTrackCount(Landroid/content/Context;)I

    move-result v0

    .line 466
    goto :goto_0

    .line 468
    :pswitch_2
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v0

    .line 469
    goto :goto_0

    .line 471
    :pswitch_3
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->size(Landroid/content/Context;)I

    move-result v0

    .line 472
    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 3
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 493
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-nez v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 498
    .local v0, first:Z
    :goto_1
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v1, p2}, Lcom/miui/player/model/PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 499
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 504
    if-eqz v0, :cond_2

    .line 505
    sget-object v1, Lcom/miui/player/ui/PlaylistBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->restoreListPosition(Landroid/widget/ListView;)V

    .line 507
    :cond_2
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitleBar()V

    goto :goto_0

    .line 497
    .end local v0           #first:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/PlaylistListAdapter;->notifyDataSetChanged()V

    .line 585
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

    const/4 v0, -0x1

    .line 359
    packed-switch p1, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/ui/base/TemplateListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 383
    return-void

    .line 362
    :pswitch_0
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 363
    const-string v0, "playlist_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 364
    .local v2, playlistId:J
    const-string v0, "track_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 365
    .local v1, trackIds:[J
    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    if-eqz v1, :cond_0

    .line 366
    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    goto :goto_0

    .line 376
    .end local v1           #trackIds:[J
    .end local v2           #playlistId:J
    :pswitch_1
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 186
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->parseMenuIntent(Landroid/content/Intent;)J

    move-result-wide v7

    .line 187
    .local v7, plid:J
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 257
    invoke-super/range {p0 .. p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 189
    :sswitch_0
    sget-object v20, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 190
    .local v20, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v20, :cond_0

    .line 191
    const-wide/16 v3, -0x3

    cmp-long v3, v7, v3

    if-nez v3, :cond_1

    .line 193
    const-wide/16 v3, 0x0

    :try_start_0
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Lcom/miui/player/service/IMediaPlaybackService;->seek(J)J

    .line 194
    invoke-interface/range {v20 .. v20}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 198
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSeletedTrackIds(J)[J

    move-result-object v10

    .line 199
    .local v10, list:[J
    if-eqz v10, :cond_0

    array-length v3, v10

    if-lez v3, :cond_0

    .line 200
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JI)V

    goto :goto_1

    .line 206
    .end local v10           #list:[J
    .end local v20           #service:Lcom/miui/player/service/IMediaPlaybackService;
    :sswitch_1
    const-wide/16 v3, -0x4

    cmp-long v3, v7, v3

    if-nez v3, :cond_3

    .line 207
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v7

    .line 212
    :cond_2
    :goto_2
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.miui.player.TRACK_PICKER"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v19, picker:Landroid/content/Intent;
    const-string v3, "playlist_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 214
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    const/4 v3, 0x1

    goto :goto_0

    .line 208
    .end local v19           #picker:Landroid/content/Intent;
    :cond_3
    const-wide/16 v3, -0x3

    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    .line 209
    const-wide/16 v7, 0x0

    goto :goto_2

    .line 217
    :sswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/miui/player/provider/PlaylistHelper;->deletePlaylist(Landroid/content/Context;J)V

    .line 218
    const v3, 0x7f080044

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 219
    const/4 v3, 0x1

    goto :goto_0

    .line 221
    :sswitch_3
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v15, editIntent:Landroid/content/Intent;
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 224
    const/4 v3, 0x1

    goto :goto_0

    .line 226
    .end local v15           #editIntent:Landroid/content/Intent;
    :sswitch_4
    const/16 v5, 0x15

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-static/range {v3 .. v8}, Lcom/miui/player/ui/OperationDialog;->makePlaylistRenamer(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;J)Lcom/miui/player/ui/OperationDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/ui/OperationDialog;->show()V

    .line 228
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 230
    :sswitch_5
    const/4 v3, -0x1

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1, v3, v4}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/ui/OperationDialog;->show()V

    .line 231
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 233
    :sswitch_6
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->parseMenuIntent(Landroid/content/Intent;)J

    move-result-wide v17

    .line 234
    .local v17, itemId:J
    const-wide/16 v3, -0xa

    cmp-long v3, v17, v3

    if-eqz v3, :cond_4

    .line 235
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSeletedTrackIds(J)[J

    move-result-object v10

    .line 236
    .restart local v10       #list:[J
    if-eqz v10, :cond_4

    array-length v3, v10

    if-lez v3, :cond_4

    .line 237
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 240
    .end local v10           #list:[J
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 243
    .end local v17           #itemId:J
    :sswitch_7
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 244
    .local v16, intent:Landroid/content/Intent;
    if-eqz v16, :cond_5

    .line 245
    const-string v3, "dst_playlist"

    const-wide/16 v4, -0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 246
    .local v11, dstId:J
    const-wide/16 v3, -0xa

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    const-wide/16 v3, -0xa

    cmp-long v3, v11, v3

    if-eqz v3, :cond_5

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSeletedTrackIds(J)[J

    move-result-object v10

    .line 248
    .restart local v10       #list:[J
    if-eqz v10, :cond_5

    array-length v3, v10

    if-lez v3, :cond_5

    .line 249
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    move-object/from16 v9, p0

    invoke-static/range {v9 .. v14}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 254
    .end local v10           #list:[J
    .end local v11           #dstId:J
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 195
    .end local v16           #intent:Landroid/content/Intent;
    .restart local v20       #service:Lcom/miui/player/service/IMediaPlaybackService;
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0xc -> :sswitch_6
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreateContent(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 95
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->initilizePresetItems()V

    .line 97
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 100
    .local v9, lv:Landroid/widget/ListView;
    iput-object v9, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mListView:Landroid/widget/ListView;

    .line 101
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 103
    new-instance v0, Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f03002a

    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    new-array v5, v11, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v5, v10

    new-array v6, v11, [I

    const v2, 0x1020014

    aput v2, v6, v10

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    .line 111
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 115
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0, v11}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setNavigatorRes(I)V

    .line 118
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/TitleBarController;->getNavigatorWidth()I

    move-result v8

    .line 119
    .local v8, left:I
    invoke-static {v9, v8, v10, v10, v10}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 120
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const v9, 0x7f0800b8

    const/16 v8, 0x17

    const/4 v7, 0x0

    .line 157
    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 158
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 182
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "src_playlist"

    iget-wide v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, extras:Landroid/content/Intent;
    const/4 v3, 0x5

    const v4, 0x7f080052

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 166
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 167
    const/16 v3, 0x13

    const v4, 0x7f08003f

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 168
    const/16 v3, 0x15

    const v4, 0x7f080041

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 169
    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 176
    :cond_1
    :goto_1
    const/4 v3, 0x1

    const v4, 0x7f080053

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 177
    .local v2, sub:Landroid/view/SubMenu;
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v3, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPlaylistId(J)J

    move-result-wide v3

    invoke-static {p0, v2, v0, v3, v4}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;J)V

    .line 179
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 180
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 170
    .end local v2           #sub:Landroid/view/SubMenu;
    :cond_2
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 172
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x4

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x3

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 173
    :cond_3
    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    sget-object v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->saveListPosition(Landroid/widget/ListView;)V

    .line 137
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/model/PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 143
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iput-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    .line 145
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 146
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 326
    packed-switch p1, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 328
    :pswitch_0
    if-eqz p2, :cond_0

    .line 329
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 330
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_0

    .line 331
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 332
    .local v2, playlistId:J
    const-string v0, "callback"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 333
    .local v6, callback:Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 335
    invoke-direct {p0, v6}, Lcom/miui/player/ui/PlaylistBrowserActivity;->parseMenuIntent(Landroid/content/Intent;)J

    move-result-wide v8

    .line 336
    .local v8, srcId:J
    const-wide/16 v4, -0xa

    cmp-long v0, v8, v4

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0, v8, v9}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSeletedTrackIds(J)[J

    move-result-object v1

    .line 338
    .local v1, ids:[J
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    goto :goto_0

    .line 345
    .end local v1           #ids:[J
    .end local v8           #srcId:J
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.miui.player.TRACK_PICKER"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v7, picker:Landroid/content/Intent;
    const-string v0, "playlist_id"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 295
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-nez v4, :cond_0

    .line 296
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {p0, p0, v4, v5}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/player/ui/OperationDialog;->show()V

    .line 322
    :goto_0
    return-void

    .line 300
    :cond_0
    const-wide/16 v4, -0x3

    cmp-long v4, p4, v4

    if-nez v4, :cond_1

    .line 301
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.player.NOWPLAYING_PLAYLIST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v3, nowplaying:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 306
    .end local v3           #nowplaying:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    .line 307
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x1

    .line 308
    .local v0, editable:Z
    const-wide/16 v4, -0x2

    cmp-long v4, p4, v4

    if-nez v4, :cond_2

    .line 309
    const-string v2, "recentlyAdd"

    .line 310
    const/4 v0, 0x0

    .line 317
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.miui.player.BROWSER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v4, "playlist_name"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v4, "editmode"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 311
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-wide/16 v4, -0x4

    cmp-long v4, p4, v4

    if-nez v4, :cond_3

    .line 312
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 314
    :cond_3
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistListAdapter;->notifyDataSetChanged()V

    .line 128
    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 411
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 412
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
