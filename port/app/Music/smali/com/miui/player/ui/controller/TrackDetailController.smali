.class public Lcom/miui/player/ui/controller/TrackDetailController;
.super Ljava/lang/Object;
.source "TrackDetailController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
    }
.end annotation


# static fields
.field private static final DETAIL_INFO_ARR:[Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;


# instance fields
.field private final mContainer:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mSwitchView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    const v3, 0x7f0c0060

    const v4, 0x7f0800b9

    invoke-direct {v2, v3, v4}, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    const v3, 0x7f0c0001

    const v4, 0x7f0800ba

    invoke-direct {v2, v3, v4}, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    const v3, 0x7f0c006e

    const v4, 0x7f0800bb

    invoke-direct {v2, v3, v4}, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    const v3, 0x7f0c006f

    const v4, 0x7f0800bc

    invoke-direct {v2, v3, v4}, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    const v3, 0x7f0c0070

    const v4, 0x7f0800bd

    invoke-direct {v2, v3, v4}, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/ui/controller/TrackDetailController;->DETAIL_INFO_ARR:[Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 8
    .parameter "parent"
    .parameter "switchView"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mSwitchView:Landroid/view/View;

    .line 61
    const v6, 0x7f0c0021

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContainer:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContainer:Landroid/view/View;

    .line 64
    .local v2, container:Landroid/view/View;
    sget-object v0, Lcom/miui/player/ui/controller/TrackDetailController;->DETAIL_INFO_ARR:[Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    .local v0, arr$:[Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 65
    .local v5, pair:Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
    iget v6, v5, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;->mTypeId:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, child:Landroid/view/View;
    const v6, 0x7f0c006c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v7, v5, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;->mNameResId:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v1           #child:Landroid/view/View;
    .end local v5           #pair:Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
    :cond_0
    return-void
.end method

.method private getLocalTrackDetail(J[Ljava/lang/CharSequence;)Z
    .locals 13
    .parameter "audioId"
    .parameter "values"

    .prologue
    .line 158
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 161
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 162
    .local v10, ret:Z
    if-eqz v8, :cond_1

    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "artist"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, artist:Ljava/lang/String;
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, p3, v0

    .line 169
    const-string v0, "album"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, album:Ljava/lang/String;
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, p3, v0

    .line 173
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/controller/TrackDetailController;->queryGenre(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 176
    const-string v0, "_size"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 177
    .local v11, size:J
    const/4 v0, 0x3

    invoke-static {v11, v12}, Lcom/xiaomi/common/util/Strings;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 180
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, path:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-static {v9}, Lcom/xiaomi/common/file/FileNameUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 182
    const/4 v10, 0x1

    .line 184
    .end local v6           #album:Ljava/lang/String;
    .end local v7           #artist:Ljava/lang/String;
    .end local v9           #path:Ljava/lang/String;
    .end local v11           #size:J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_1
    return v10
.end method

.method private getOnlineTrackDetail([Ljava/lang/CharSequence;)Z
    .locals 11
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 119
    sget-object v5, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 120
    .local v5, s:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v5, :cond_0

    .line 154
    :goto_0
    return v7

    .line 125
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContext:Landroid/content/Context;

    invoke-interface {v5}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, p1, v7

    .line 126
    const/4 v7, 0x1

    iget-object v9, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContext:Landroid/content/Context;

    invoke-interface {v5}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, p1, v7

    .line 127
    invoke-interface {v5}, Lcom/miui/player/service/IMediaPlaybackService;->getPlayingFilePath()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, path:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 129
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 132
    :try_start_1
    invoke-static {v3}, Lentagged/audioformats/AudioFileIO;->read(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v0

    .line 133
    .local v0, audio:Lentagged/audioformats/AudioFile;
    invoke-virtual {v0}, Lentagged/audioformats/AudioFile;->getTag()Lentagged/audioformats/Tag;

    move-result-object v6

    .line 134
    .local v6, tag:Lentagged/audioformats/Tag;
    const/4 v7, 0x2

    invoke-interface {v6}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p1, v7
    :try_end_1
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .end local v0           #audio:Lentagged/audioformats/AudioFile;
    .end local v6           #tag:Lentagged/audioformats/Tag;
    :goto_1
    const/4 v7, 0x3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/xiaomi/common/util/Strings;->formatSize(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, p1, v7

    .line 140
    invoke-static {v4}, Lcom/xiaomi/common/file/FileNameUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, ext:Ljava/lang/String;
    const-string v7, "tmp"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v7, v9

    add-int/lit8 v1, v7, -0x1

    .line 143
    .local v1, end:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 144
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/common/file/FileNameUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .end local v1           #end:I
    :cond_1
    const/4 v7, 0x4

    aput-object v2, p1, v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #ext:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    :goto_2
    move v7, v8

    .line 154
    goto :goto_0

    .line 151
    :catch_0
    move-exception v7

    goto :goto_2

    .line 135
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #path:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private queryGenre(J)Ljava/lang/String;
    .locals 8
    .parameter "audioId"

    .prologue
    const/4 v2, 0x0

    .line 191
    const-string v0, "external"

    long-to-int v3, p1

    invoke-static {v0, v3}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 194
    .local v7, genre:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 198
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_1
    return-object v7
.end method

.method private updateDetailInfo()V
    .locals 14

    .prologue
    .line 94
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v1

    .line 95
    .local v1, audioId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-gez v12, :cond_1

    .line 116
    :cond_0
    return-void

    .line 99
    :cond_1
    sget-object v12, Lcom/miui/player/ui/controller/TrackDetailController;->DETAIL_INFO_ARR:[Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    array-length v12, v12

    new-array v11, v12, [Ljava/lang/String;

    .line 100
    .local v11, values:[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 102
    .local v9, success:Z
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 103
    invoke-direct {p0, v11}, Lcom/miui/player/ui/controller/TrackDetailController;->getOnlineTrackDetail([Ljava/lang/CharSequence;)Z

    move-result v9

    .line 108
    :goto_0
    if-eqz v9, :cond_0

    .line 109
    iget-object v3, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContainer:Landroid/view/View;

    .line 110
    .local v3, container:Landroid/view/View;
    const/4 v4, 0x0

    .line 111
    .local v4, i:I
    sget-object v0, Lcom/miui/player/ui/controller/TrackDetailController;->DETAIL_INFO_ARR:[Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;

    .local v0, arr$:[Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v8, v0, v6

    .line 112
    .local v8, pair:Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
    iget v12, v8, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;->mTypeId:I

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 113
    .local v10, v:Landroid/view/View;
    const v12, 0x7f0c006d

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aget-object v13, v11, v5

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_1

    .line 105
    .end local v0           #arr$:[Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
    .end local v3           #container:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #pair:Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
    .end local v10           #v:Landroid/view/View;
    :cond_2
    invoke-direct {p0, v1, v2, v11}, Lcom/miui/player/ui/controller/TrackDetailController;->getLocalTrackDetail(J[Ljava/lang/CharSequence;)Z

    move-result v9

    goto :goto_0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mSwitchView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 77
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 78
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 87
    :goto_1
    return-void

    .line 77
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 82
    .restart local v0       #visibility:I
    :cond_1
    if-eqz p1, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/miui/player/ui/controller/TrackDetailController;->updateDetailInfo()V

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/controller/TrackDetailController;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
