.class Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation


# instance fields
.field mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

.field private final mValidAlbumIdArr:[J

.field private final mValidArtistIdArr:[J

.field private final mValidTrackIdArr:[J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 252
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    .line 253
    iput-object p2, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    .line 255
    invoke-static {p1}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidArtistIdArr(Landroid/content/Context;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidArtistIdArr:[J

    .line 256
    invoke-static {p1}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidAlbumIdArr(Landroid/content/Context;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidAlbumIdArr:[J

    .line 257
    invoke-static {p1}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidTrackIdArr(Landroid/content/Context;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidTrackIdArr:[J

    .line 258
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 266
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 267
    .local v3, id:J
    const v15, 0x7f0c0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 268
    .local v13, tv1:Landroid/widget/TextView;
    const v15, 0x7f0c000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 269
    .local v14, tv2:Landroid/widget/TextView;
    const v15, 0x7f0c004c

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 270
    .local v6, iv:Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 271
    .local v11, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v11, :cond_1

    .line 273
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const/4 v15, -0x2

    iput v15, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    const/4 v15, -0x2

    iput v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    const-string v15, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, mimetype:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 283
    const-string v7, "audio/"

    .line 285
    :cond_2
    const-string v15, "artist"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 286
    const v15, 0x7f020048

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    const-string v15, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 290
    .local v5, isunknown:Z
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const-string v15, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 293
    .local v9, numalbums:I
    const-string v15, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 295
    .local v10, numsongs:I
    move-object/from16 v0, p2

    invoke-static {v0, v9, v10, v5}, Lcom/miui/player/ui/UIHelper;->makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v12

    .line 298
    .local v12, songs_albums:Ljava/lang/String;
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidArtistIdArr:[J

    invoke-static {v15, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v15

    if-ltz v15, :cond_3

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 301
    .end local v5           #isunknown:Z
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #numalbums:I
    .end local v10           #numsongs:I
    .end local v12           #songs_albums:Ljava/lang/String;
    :cond_4
    const-string v15, "album"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 302
    const v15, 0x7f02000a

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    const-string v15, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 305
    .restart local v8       #name:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const-string v15, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 309
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidAlbumIdArr:[J

    invoke-static {v15, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v15

    if-ltz v15, :cond_5

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 312
    .end local v8           #name:Ljava/lang/String;
    :cond_6
    const-string v15, "audio/"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "application/ogg"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "application/x-ogg"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 315
    :cond_7
    const v15, 0x7f02004a

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    const-string v15, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 318
    .restart local v8       #name:Ljava/lang/String;
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const-string v15, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, ar:Ljava/lang/String;
    const-string v15, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, al:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v2, v1}, Lcom/miui/player/ui/UIHelper;->getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidTrackIdArr:[J

    invoke-static {v15, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v15

    if-ltz v15, :cond_8

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/QueryBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 332
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 p1, 0x0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    iput-object p1, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 337
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 339
    :cond_1
    return-void
.end method
