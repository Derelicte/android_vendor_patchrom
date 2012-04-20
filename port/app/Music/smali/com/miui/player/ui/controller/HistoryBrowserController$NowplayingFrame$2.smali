.class Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;
.super Landroid/os/AsyncTask;
.source "HistoryBrowserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->refreshAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

.field final synthetic val$latestIds:[J


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    iput-object p2, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->val$latestIds:[J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 27
    .parameter "params"

    .prologue
    .line 274
    const/16 v25, 0x0

    .line 275
    .local v25, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->val$latestIds:[J

    move-object/from16 v18, v0

    .local v18, arr$:[J
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    aget-wide v20, v18, v24

    .line 276
    .local v20, audioId:J
    const/16 v23, 0x0

    .line 277
    .local v23, dr:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 278
    .local v9, al:Ljava/lang/String;
    const/4 v10, 0x0

    .line 279
    .local v10, ar:Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 282
    .local v14, albumId:J
    invoke-static/range {v20 .. v21}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    .line 288
    .local v4, cols:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 289
    .local v17, albumIdx:I
    const/16 v19, 0x1

    .line 291
    .local v19, artistIdx:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    iget-object v2, v2, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 294
    .local v22, c:Landroid/database/Cursor;
    if-eqz v22, :cond_1

    .line 295
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 297
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 299
    :cond_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v7, v14

    .line 325
    .end local v14           #albumId:J
    .local v7, albumId:J
    :goto_1
    invoke-static {v9}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 326
    invoke-static {v10}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    iget-object v6, v2, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    iget v12, v2, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->HISTORY_DEFAULT_ALBUM_WIDTH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    iget v13, v2, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->HISTORY_DEFAULT_ALBUM_WIDTH:I

    invoke-static/range {v6 .. v13}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuick(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 330
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;

    const/4 v3, 0x0

    new-instance v6, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;

    move/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;-><init>(ILandroid/graphics/drawable/Drawable;)V

    aput-object v6, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->publishProgress([Ljava/lang/Object;)V

    .line 331
    add-int/lit8 v25, v25, 0x1

    .line 275
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 302
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v7           #albumId:J
    .end local v17           #albumIdx:I
    .end local v19           #artistIdx:I
    .end local v22           #c:Landroid/database/Cursor;
    .restart local v14       #albumId:J
    :cond_2
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "artist"

    aput-object v3, v4, v2

    .line 308
    .restart local v4       #cols:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 309
    .local v16, albumIdIdx:I
    const/16 v17, 0x1

    .line 310
    .restart local v17       #albumIdx:I
    const/16 v19, 0x2

    .line 312
    .restart local v19       #artistIdx:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    .restart local v5       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    iget-object v2, v2, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 315
    .restart local v22       #c:Landroid/database/Cursor;
    if-eqz v22, :cond_5

    .line 316
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 317
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 318
    .end local v14           #albumId:J
    .restart local v7       #albumId:J
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 319
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 321
    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 334
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v7           #albumId:J
    .end local v9           #al:Ljava/lang/String;
    .end local v10           #ar:Ljava/lang/String;
    .end local v16           #albumIdIdx:I
    .end local v17           #albumIdx:I
    .end local v19           #artistIdx:I
    .end local v20           #audioId:J
    .end local v22           #c:Landroid/database/Cursor;
    .end local v23           #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v2, 0x0

    return-object v2

    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v9       #al:Ljava/lang/String;
    .restart local v10       #ar:Ljava/lang/String;
    .restart local v14       #albumId:J
    .restart local v16       #albumIdIdx:I
    .restart local v17       #albumIdx:I
    .restart local v19       #artistIdx:I
    .restart local v20       #audioId:J
    .restart local v22       #c:Landroid/database/Cursor;
    .restart local v23       #dr:Landroid/graphics/drawable/Drawable;
    :cond_4
    move-wide v7, v14

    .end local v14           #albumId:J
    .restart local v7       #albumId:J
    goto :goto_2

    .end local v7           #albumId:J
    .restart local v14       #albumId:J
    :cond_5
    move-wide v7, v14

    .end local v14           #albumId:J
    .restart local v7       #albumId:J
    goto/16 :goto_1
.end method

.method protected varargs onProgressUpdate([Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;)V
    .locals 3
    .parameter "historyAlbums"

    .prologue
    .line 264
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 265
    .local v0, ha:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;
    iget-object v1, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;->mAlbum:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    iget-object v1, v1, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    iget v2, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;->mIndex:I

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;->mAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    iget-object v1, v1, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    iget v2, v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;->mIndex:I

    aget-object v1, v1, v2

    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, [Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->onProgressUpdate([Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;)V

    return-void
.end method
