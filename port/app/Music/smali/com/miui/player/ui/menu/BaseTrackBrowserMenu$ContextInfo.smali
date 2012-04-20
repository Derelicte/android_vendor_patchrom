.class public Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
.super Ljava/lang/Object;
.source "BaseTrackBrowserMenu.java"

# interfaces
.implements Lcom/miui/player/ui/menu/common/MenuContextInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextInfo"
.end annotation


# instance fields
.field public mAlbumId:J

.field public mAlbumName:Ljava/lang/String;

.field public mArtistId:J

.field public mArtistName:Ljava/lang/String;

.field public mCursor:Landroid/database/Cursor;

.field public mEditMode:Z

.field public mHeaderCount:I

.field public mOnlineSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

.field public mPlaylistId:J

.field public mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mOnlineSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 72
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 73
    iput v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mHeaderCount:I

    .line 74
    iput-boolean v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mEditMode:Z

    .line 75
    iput-wide v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mPlaylistId:J

    .line 76
    iput-wide v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAlbumId:J

    .line 77
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAlbumName:Ljava/lang/String;

    .line 78
    iput-wide v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mArtistId:J

    .line 79
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mArtistName:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mRefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mOnlineSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-nez v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mOnlineSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mOnlineSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v2, v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 92
    goto :goto_0
.end method
