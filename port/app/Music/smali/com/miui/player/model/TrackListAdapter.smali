.class public Lcom/miui/player/model/TrackListAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "TrackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackListAdapter$TrackBrowser;,
        Lcom/miui/player/model/TrackListAdapter$ViewHolder;,
        Lcom/miui/player/model/TrackListAdapter$TrackCursorConverter;
    }
.end annotation


# static fields
.field public static final MEMBER_COLUMNS:[Ljava/lang/String;

.field public static final NOWPLAYING_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final TRACK_COLUMNS:[Ljava/lang/String;


# instance fields
.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mDownloadedFileSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDurationIdx:I

.field mIsNowPlaying:Z

.field mMemberIdIdx:I

.field private final mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNowplayingBgVisible:Z

.field mOnlineIdIdx:I

.field private final mPadding:I

.field private final mSortableListView:Lcom/miui/player/ui/view/SortableListView;

.field mTitleIdx:I

.field private final mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    const-class v0, Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/model/TrackListAdapter;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "online_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "provider_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "play_order"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackListAdapter;->MEMBER_COLUMNS:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "online_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackListAdapter;->NOWPLAYING_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/model/TrackListAdapter$TrackBrowser;ILandroid/database/Cursor;[Ljava/lang/String;[IZLcom/miui/player/ui/view/AlphabetFastIndexer;Lcom/miui/player/ui/view/SortableListView;Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "fastIndexer"
    .parameter "slv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/player/model/TrackListAdapter$TrackBrowser;",
            "I",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "[IZ",
            "Lcom/miui/player/ui/view/AlphabetFastIndexer;",
            "Lcom/miui/player/ui/view/SortableListView;",
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p10, controller:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<Ljava/lang/Long;>;"
    const-string v8, "title"

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 323
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/miui/player/model/TrackListAdapter;->mDownloadedFileSet:Ljava/util/Set;

    .line 148
    iput-object p2, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    .line 149
    invoke-direct {p0, p4}, Lcom/miui/player/model/TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 150
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/miui/player/model/TrackListAdapter;->mIsNowPlaying:Z

    .line 151
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/miui/player/model/TrackListAdapter;->mSortableListView:Lcom/miui/player/ui/view/SortableListView;

    .line 152
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/miui/player/model/TrackListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mPadding:I

    .line 154
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mTitleIdx:I

    .line 163
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mArtistIdx:I

    .line 164
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mDurationIdx:I

    .line 166
    :try_start_0
    const-string v1, "audio_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mMemberIdIdx:I

    .line 172
    const-string v1, "online_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mOnlineIdIdx:I

    .line 174
    iget-object v1, p0, Lcom/miui/player/model/TrackListAdapter;->mDownloadedFileSet:Ljava/util/Set;

    invoke-static {v1}, Lcom/miui/player/model/TrackListAdapter;->updateDownloadedFileSet(Ljava/util/Set;)V

    .line 176
    :cond_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0
.end method

.method private static updateDownloadedFileSet(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 326
    const-string v6, "mp3"

    invoke-static {v6}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 327
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 329
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 330
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 331
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 335
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 205
    invoke-super/range {p0 .. p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 206
    sget-object v18, Lcom/miui/player/model/TrackListAdapter;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bindView "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter;->mSortableListView:Lcom/miui/player/ui/view/SortableListView;

    move-object/from16 v18, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/player/ui/view/SortableListView;->getOrderedAnimation(I)Landroid/view/animation/Animation;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 211
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackListAdapter;->mTitleIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 212
    .local v15, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackListAdapter;->mArtistIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, artist:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/player/model/TrackListAdapter$ViewHolder;

    .line 215
    .local v16, vh:Lcom/miui/player/model/TrackListAdapter$ViewHolder;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->primaryItem:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackListAdapter;->mAudioIdIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 220
    .local v6, audioId:J
    const/4 v8, 0x1

    .line 221
    .local v8, isLocal:Z
    invoke-static {v6, v7}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 222
    invoke-static {v5}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "mp3"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter;->mDownloadedFileSet:Ljava/util/Set;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 226
    .end local v11           #name:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->onlineIndicator:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v8, :cond_9

    const/16 v18, 0x8

    :goto_0
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 229
    .local v10, iv:Landroid/widget/ImageView;
    const/4 v14, 0x0

    .line 230
    .local v14, onlineId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackListAdapter;->mOnlineIdIdx:I

    move/from16 v18, v0

    if-ltz v18, :cond_2

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackListAdapter;->mOnlineIdIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 233
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v14}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 234
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :goto_1
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 240
    const-wide/16 v12, -0x1

    .line 242
    .local v12, nowplayingId:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackListAdapter;->mIsNowPlaying:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 243
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v18

    move/from16 v0, v18

    int-to-long v12, v0

    .line 259
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->isIndicateNowplaying()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 260
    const/4 v9, 0x0

    .line 261
    .local v9, isPlayingItem:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackListAdapter;->mIsNowPlaying:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v12

    if-eqz v18, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackListAdapter;->mIsNowPlaying:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    cmp-long v18, v6, v12

    if-eqz v18, :cond_5

    :cond_4
    if-eqz v14, :cond_d

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentOnlineId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 264
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 266
    const v18, 0x7f02004d

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    :goto_3
    const/4 v9, 0x1

    .line 275
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackListAdapter;->mNowplayingBgVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 276
    if-eqz v9, :cond_e

    .line 277
    const v18, 0x7f020067

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackListAdapter;->mPadding:I

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackListAdapter;->mPadding:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 285
    .end local v9           #isPlayingItem:Z
    :cond_6
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->adjustButton:Landroid/widget/ImageView;

    .line 286
    if-eqz v10, :cond_7

    .line 287
    const/16 v17, 0x8

    .line 288
    .local v17, visibility:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->isEditing()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 289
    const/16 v17, 0x0

    .line 293
    :goto_6
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    .end local v17           #visibility:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v18, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/controller/MultiChoiceController;->bindItemView(Landroid/view/View;I)V

    .line 300
    :cond_8
    return-void

    .line 226
    .end local v10           #iv:Landroid/widget/ImageView;
    .end local v12           #nowplayingId:J
    .end local v14           #onlineId:Ljava/lang/String;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 236
    .restart local v10       #iv:Landroid/widget/ImageView;
    .restart local v14       #onlineId:Ljava/lang/String;
    :cond_a
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 245
    .restart local v12       #nowplayingId:J
    :cond_b
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v12

    goto/16 :goto_2

    .line 268
    .restart local v9       #isPlayingItem:Z
    :cond_c
    const v18, 0x7f02004c

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 272
    :cond_d
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 279
    :cond_e
    const v18, 0x7f020050

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 291
    .end local v9           #isPlayingItem:Z
    .restart local v17       #visibility:I
    :cond_f
    const/16 v17, 0x8

    goto :goto_6
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    invoke-interface {v0}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->isWorking()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 305
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 306
    const/4 p1, 0x0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    invoke-interface {v0, p1}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-direct {p0, p1}, Lcom/miui/player/model/TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 311
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 312
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/miui/player/model/TrackListAdapter;->setViewHolder(Landroid/view/View;)V

    .line 182
    return-object v0
.end method

.method public setNowplayingBgVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/miui/player/model/TrackListAdapter;->mNowplayingBgVisible:Z

    .line 158
    return-void
.end method

.method public setViewHolder(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 186
    new-instance v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/TrackListAdapter$ViewHolder;-><init>()V

    .line 187
    .local v1, vh:Lcom/miui/player/model/TrackListAdapter$ViewHolder;
    const v2, 0x7f0c003f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 188
    .local v0, iv:Landroid/widget/ImageView;
    iput-object v0, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->adjustButton:Landroid/widget/ImageView;

    .line 189
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/TrackListAdapter;->mSortableListView:Lcom/miui/player/ui/view/SortableListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    invoke-interface {v2}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->isSortable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/miui/player/model/TrackListAdapter;->mSortableListView:Lcom/miui/player/ui/view/SortableListView;

    invoke-virtual {v2}, Lcom/miui/player/ui/view/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    :cond_0
    const v2, 0x7f0c009f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #iv:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 195
    .restart local v0       #iv:Landroid/widget/ImageView;
    const v2, 0x7f0c0035

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->primaryItem:Landroid/widget/TextView;

    .line 196
    const v2, 0x7f0c0036

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    .line 197
    const v2, 0x7f0c00a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->onlineIndicator:Landroid/widget/TextView;

    .line 198
    const v2, 0x7f0c000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 199
    const v2, 0x7f0c00a3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 201
    return-void
.end method
