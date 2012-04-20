.class public Lcom/miui/player/model/OnlineMusicAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlineMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

.field private mStatusArr:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, batchSelection:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 41
    return-void
.end method

.method private getDownloadStatus(Ljava/util/ArrayList;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 213
    :cond_0
    return-void

    .line 177
    :cond_1
    const/4 v2, 0x0

    .line 179
    .local v2, alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v17, "mp3"

    invoke-static/range {v17 .. v17}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 180
    .local v7, dir:Ljava/io/File;
    if-eqz v7, :cond_2

    .line 181
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 182
    .local v6, childs:[Ljava/io/File;
    if-eqz v6, :cond_2

    .line 183
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 184
    .restart local v2       #alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v5, v6

    .local v5, arr$:[Ljava/io/File;
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v13, :cond_2

    aget-object v8, v5, v10

    .line 185
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 190
    .end local v5           #arr$:[Ljava/io/File;
    .end local v6           #childs:[Ljava/io/File;
    .end local v8           #f:Ljava/io/File;
    .end local v10           #i$:I
    .end local v13           #len$:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 191
    .local v15, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v15, :cond_4

    .line 192
    :cond_3
    new-array v0, v15, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    .line 194
    :cond_4
    const/4 v14, 0x0

    .line 195
    .local v14, maxSelectCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v15, :cond_0

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .line 197
    .local v11, id:Ljava/lang/String;
    invoke-static {v11}, Lcom/miui/player/network/DownloadInfoManager;->isDownloading(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput v18, v17, v9

    .line 195
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 200
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 201
    .local v12, item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iget-object v0, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 202
    .local v16, tr:Ljava/lang/String;
    iget-object v4, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    .line 203
    .local v4, ar:Ljava/lang/String;
    const-string v17, "mp3"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, appointName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 206
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aput v18, v17, v9

    goto :goto_2

    .line 208
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v9

    .line 209
    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMusicInfoSongList()Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    return-object v0
.end method

.method public getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSongItemArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 92
    move-object/from16 v10, p2

    .line 93
    .local v10, view:Landroid/view/View;
    if-nez v10, :cond_0

    .line 94
    iget-object v11, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030039

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 97
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;

    .line 98
    .local v9, vh:Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
    if-nez v9, :cond_1

    .line 99
    new-instance v9, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;

    .end local v9           #vh:Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
    invoke-direct {v9, p0, v10}, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;-><init>(Lcom/miui/player/model/OnlineMusicAdapter;Landroid/view/View;)V

    .line 100
    .restart local v9       #vh:Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
    invoke-virtual {v10, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v6

    .line 104
    .local v6, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iget-object v11, v9, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->trackNameText:Landroid/widget/TextView;

    iget-object v12, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v11, v9, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->artistNameText:Landroid/widget/TextView;

    iget-object v12, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, isPlayingItem:Z
    const/4 v1, 0x0

    .line 109
    .local v1, isBuffering:Z
    const/4 v2, 0x0

    .line 112
    .local v2, isPlaying:Z
    :try_start_0
    sget-object v5, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 114
    .local v5, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v5, :cond_2

    .line 115
    iget-object v11, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-interface {v5}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 116
    invoke-interface {v5}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    .line 117
    invoke-interface {v5}, Lcom/miui/player/service/IMediaPlaybackService;->isBuffering()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 122
    .end local v5           #service:Lcom/miui/player/service/IMediaPlaybackService;
    :cond_2
    :goto_0
    iget-object v4, v9, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 123
    .local v4, iv:Landroid/widget/ImageView;
    if-eqz v3, :cond_6

    .line 124
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    if-nez v2, :cond_3

    if-eqz v1, :cond_5

    .line 127
    :cond_3
    const v11, 0x7f02004d

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    :goto_1
    iget-object v11, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v11}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/miui/player/provider/FavoriteCache;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 137
    iget-object v11, v9, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :goto_2
    iget-object v11, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    aget v7, v11, p1

    .line 143
    .local v7, status:I
    iget-object v8, v9, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->downloadText:Landroid/widget/TextView;

    .line 144
    .local v8, text:Landroid/widget/TextView;
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v11, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v11, v10, p1}, Lcom/miui/player/ui/controller/MultiChoiceController;->bindItemView(Landroid/view/View;I)V

    .line 146
    const/4 v11, 0x2

    if-ne v7, v11, :cond_8

    .line 147
    const v11, 0x7f080066

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 148
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_4
    :goto_3
    return-object v10

    .line 129
    .end local v7           #status:I
    .end local v8           #text:Landroid/widget/TextView;
    :cond_5
    const v11, 0x7f02004c

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 133
    :cond_6
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 139
    :cond_7
    iget-object v11, v9, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 149
    .restart local v7       #status:I
    .restart local v8       #text:Landroid/widget/TextView;
    :cond_8
    const/4 v11, 0x1

    if-ne v7, v11, :cond_4

    .line 150
    const v11, 0x7f080067

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 151
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 119
    .end local v4           #iv:Landroid/widget/ImageView;
    .end local v7           #status:I
    .end local v8           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDownloadStatus()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/player/model/OnlineMusicAdapter;->getDownloadStatus(Ljava/util/ArrayList;)V

    .line 220
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateSongList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 1
    .parameter "songList"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 45
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/player/model/OnlineMusicAdapter;->getDownloadStatus(Ljava/util/ArrayList;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
