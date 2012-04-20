.class public Lcom/miui/player/ui/TrackBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "TrackBrowserActivity.java"


# static fields
.field private static ALBUM_DEFAULT_HEIGHT:I

.field private static ALBUM_DEFAULT_WIDTH:I


# instance fields
.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

.field private mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 303
    sput v0, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_HEIGHT:I

    .line 304
    sput v0, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 17

    .prologue
    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 212
    .local v3, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 213
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 214
    .local v6, orderBy:Ljava/lang/String;
    const/4 v4, 0x0

    .line 216
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 218
    .local v9, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 219
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 220
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 221
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "_data"

    invoke-static {v13, v14}, Lcom/miui/player/util/SqlUtils;->pathLikeWhere(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    :cond_0
    :goto_0
    if-nez v2, :cond_7

    .line 260
    const/4 v13, 0x0

    .line 267
    :goto_1
    return-object v13

    .line 223
    :cond_1
    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 224
    const-string v13, "nowplaying"

    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 226
    const-string v13, "recentlyAdd"

    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 228
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 229
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 230
    const-string v6, "date_added DESC"

    .line 231
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/PlaylistHelper;->recentlyWhere(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 233
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v13}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v10

    .line 234
    .local v10, playlistId:J
    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-lez v13, :cond_0

    .line 235
    invoke-static {v10, v11}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 236
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->MEMBER_COLUMNS:[Ljava/lang/String;

    .line 237
    const-string v6, "play_order"

    goto :goto_0

    .line 241
    .end local v10           #playlistId:J
    :cond_3
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 242
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 244
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v12, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-ltz v13, :cond_4

    .line 246
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "album_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v6, "track, title_key"

    .line 249
    :cond_4
    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-ltz v13, :cond_6

    .line 250
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 251
    const-string v13, " AND "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "artist_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 263
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :cond_7
    new-instance v1, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    invoke-direct/range {v1 .. v6}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v1, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    if-nez v6, :cond_8

    new-instance v7, Lcom/miui/player/model/TrackListAdapter$TrackCursorConverter;

    invoke-direct {v7}, Lcom/miui/player/model/TrackListAdapter$TrackCursorConverter;-><init>()V

    .line 265
    .local v7, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    :goto_2
    if-eqz v7, :cond_9

    new-instance v8, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;

    const/4 v13, 0x0

    invoke-direct {v8, v7, v13}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 267
    .local v8, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    :goto_3
    new-instance v13, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v13, v8, v1}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    goto/16 :goto_1

    .line 264
    .end local v7           #converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    .end local v8           #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 265
    .restart local v7       #converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    :cond_9
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.queuechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.player.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.player.playstatechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.miui.player.playbackcomplete"

    aput-object v2, v0, v1

    .line 279
    .local v0, actions:[Ljava/lang/String;
    return-object v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 193
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/ui/fragment/TrackListFragment;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 194
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setTitleBar()V

    .line 195
    return-void
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setTitleBar()V

    .line 206
    return-void
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 286
    .local v0, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->notifyDataSetChanged()V

    .line 287
    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->updateNowplayingFrame()V

    .line 288
    return-void
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->isMultiChoiceModeEnabled()Z

    move-result v0

    return v0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->leaveMultiChoiceMode()Z

    move-result v0

    return v0
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 67
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->setContentView(I)V

    .line 70
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 71
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setNavigatorRes(I)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/fragment/TrackListFragment;

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 74
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/TitleBarController;->getNavigatorWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/TrackListFragment;->initLeftMargin(I)V

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/TrackListFragment;->setHasOptionsMenu(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setTitleBar()V

    .line 78
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setBackgroundAlbum()V

    .line 79
    return-void
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
    .line 174
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/ui/fragment/TrackListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 175
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 180
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isBatchSelectionModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundAlbum()V
    .locals 18

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object/from16 v17, v0

    .line 307
    .local v17, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-gtz v1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 311
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setBackgroundImageRes(I)V

    .line 312
    const v1, 0x7f0c0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 313
    .local v16, iv:Landroid/widget/ImageView;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 314
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    sget v1, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_HEIGHT:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 318
    .local v14, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_HEIGHT:I

    .line 319
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_WIDTH:I

    .line 322
    .end local v14           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, album:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, artist:Ljava/lang/String;
    if-eqz v12, :cond_2

    if-nez v8, :cond_5

    .line 325
    :cond_2
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v3, v1

    .line 330
    .local v3, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v13

    .line 335
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 337
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 339
    .end local v12           #album:Ljava/lang/String;
    .local v7, album:Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 342
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v3           #cols:[Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v5

    const/4 v9, 0x1

    sget v10, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_WIDTH:I

    sget v11, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_HEIGHT:I

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v11}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuick(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 350
    .local v15, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_3

    .line 351
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    :goto_3
    const v1, 0x7f020009

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 342
    .end local v7           #album:Ljava/lang/String;
    .end local v15           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v12       #album:Ljava/lang/String;
    .restart local v13       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    move-object v7, v12

    .end local v12           #album:Ljava/lang/String;
    .restart local v7       #album:Ljava/lang/String;
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 353
    .end local v3           #cols:[Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    .restart local v15       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    const v1, 0x7f020004

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 342
    .end local v15           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v13       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    goto :goto_4

    .end local v7           #album:Ljava/lang/String;
    .restart local v12       #album:Ljava/lang/String;
    :cond_4
    move-object v7, v12

    .end local v12           #album:Ljava/lang/String;
    .restart local v7       #album:Ljava/lang/String;
    goto :goto_1

    .end local v3           #cols:[Ljava/lang/String;
    .end local v7           #album:Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    .restart local v12       #album:Ljava/lang/String;
    :cond_5
    move-object v7, v12

    .end local v12           #album:Ljava/lang/String;
    .restart local v7       #album:Ljava/lang/String;
    goto :goto_2
.end method

.method public setTitleBar()V
    .locals 30

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    move-object/from16 v23, v0

    .line 83
    .local v23, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object/from16 v17, v0

    .line 84
    .local v17, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 85
    invoke-static {}, Lcom/miui/player/util/FolderProvider;->instance()Lcom/miui/player/util/FolderProvider;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/miui/player/ui/fragment/TrackListFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/util/FolderProvider;->queryFolderItem(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/util/FolderProvider$FolderItem;

    move-result-object v16

    .line 86
    .local v16, item:Lcom/miui/player/util/FolderProvider$FolderItem;
    if-eqz v16, :cond_0

    .line 87
    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 88
    invoke-virtual/range {v16 .. v16}, Lcom/miui/player/util/FolderProvider$FolderItem;->getFolderName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual/range {v16 .. v16}, Lcom/miui/player/util/FolderProvider$FolderItem;->getTrackCount()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 170
    .end local v16           #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-ltz v25, :cond_6

    .line 92
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, artist:Ljava/lang/CharSequence;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, album:Ljava/lang/CharSequence;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 95
    .local v9, cursor:Landroid/database/Cursor;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    :cond_2
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 97
    if-nez v3, :cond_3

    .line 98
    const-string v25, "album"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, albumIdx:I
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .end local v4           #albumIdx:I
    :cond_3
    if-nez v5, :cond_4

    .line 103
    const-string v25, "album"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, artistIdx:I
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    .end local v6           #artistIdx:I
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 109
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 110
    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 111
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 112
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 113
    .local v8, count:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090010

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v5, v27, v28

    const/16 v28, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, details:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 112
    .end local v8           #count:I
    .end local v10           #details:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCachedTrackNum()I

    move-result v8

    goto :goto_1

    .line 115
    .end local v3           #album:Ljava/lang/CharSequence;
    .end local v5           #artist:Ljava/lang/CharSequence;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-ltz v25, :cond_8

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, artistName:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 118
    .local v5, artist:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 119
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 120
    const-string v25, "artist"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 121
    .local v15, idx:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 126
    .end local v15           #idx:I
    :goto_2
    if-eqz v5, :cond_0

    .line 127
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 129
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/miui/player/provider/MediaProviderHelper;->getAlbumCount(Landroid/content/Context;J)I

    move-result v18

    .line 130
    .local v18, numalbums:I
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/miui/player/provider/MediaProviderHelper;->getTrackCount(Landroid/content/Context;J)I

    move-result v19

    .line 131
    .local v19, numsongs:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v5}, Lcom/miui/player/ui/UIHelper;->makeAlbumsLabel(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    .restart local v10       #details:Ljava/lang/String;
    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 134
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 135
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 123
    .end local v10           #details:Ljava/lang/String;
    .end local v18           #numalbums:I
    .end local v19           #numsongs:I
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 137
    .end local v5           #artist:Ljava/lang/String;
    .end local v7           #artistName:Ljava/lang/CharSequence;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_d

    .line 138
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v20

    .line 139
    .local v20, playlistName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 140
    .restart local v8       #count:I
    const/4 v11, 0x0

    .line 141
    .local v11, displayName:Ljava/lang/CharSequence;
    const-string v25, "nowplaying"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 142
    const v25, 0x7f08003b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 143
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v8

    .line 159
    :cond_9
    :goto_3
    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 160
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/high16 v26, 0x7f09

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, format:Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 144
    .end local v14           #format:Ljava/lang/String;
    :cond_a
    const-string v25, "recentlyAdd"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 145
    const v25, 0x7f080046

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 146
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/PlaylistHelper;->getRecentlyTrackCount(Landroid/content/Context;)I

    move-result v8

    goto :goto_3

    .line 148
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v21

    .line 149
    .local v21, plid:J
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v12

    .line 150
    .local v12, favoriteId:J
    cmp-long v25, v21, v12

    if-nez v25, :cond_c

    .line 151
    const v25, 0x7f0800b3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 152
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->size(Landroid/content/Context;)I

    move-result v8

    goto :goto_3

    .line 153
    :cond_c
    const-wide/16 v25, 0x0

    cmp-long v25, v21, v25

    if-ltz v25, :cond_9

    .line 154
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/miui/player/provider/PlaylistHelper;->queryPlaylistName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-static/range {v21 .. v22}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v24

    .line 156
    .local v24, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    goto/16 :goto_3

    .line 164
    .end local v8           #count:I
    .end local v11           #displayName:Ljava/lang/CharSequence;
    .end local v12           #favoriteId:J
    .end local v20           #playlistName:Ljava/lang/String;
    .end local v21           #plid:J
    .end local v24           #uri:Landroid/net/Uri;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 165
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 166
    .restart local v8       #count:I
    :goto_4
    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 167
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090002

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 165
    .end local v8           #count:I
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCachedTrackNum()I

    move-result v8

    goto :goto_4
.end method
