.class public Lcom/miui/player/util/PlaylistRecoverer;
.super Ljava/lang/Object;
.source "PlaylistRecoverer.java"


# static fields
.field private static sInstance:Lcom/miui/player/util/PlaylistRecoverer;


# instance fields
.field private mForceRecover:Z

.field private mLastFilterSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/util/PlaylistRecoverer;->sInstance:Lcom/miui/player/util/PlaylistRecoverer;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "lastFilterSize"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mLastFilterSize:I

    .line 16
    iput-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mForceRecover:Z

    .line 19
    iput p1, p0, Lcom/miui/player/util/PlaylistRecoverer;->mLastFilterSize:I

    .line 20
    return-void
.end method

.method private static getLastFilterSize(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const-string v0, "min_music_filter_size"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/miui/player/util/PlaylistRecoverer;
    .locals 3
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/miui/player/util/PlaylistRecoverer;->sInstance:Lcom/miui/player/util/PlaylistRecoverer;

    if-nez v0, :cond_0

    .line 63
    const-class v1, Lcom/miui/player/util/PlaylistRecoverer;

    monitor-enter v1

    .line 64
    :try_start_0
    new-instance v0, Lcom/miui/player/util/PlaylistRecoverer;

    invoke-static {p0}, Lcom/miui/player/util/PlaylistRecoverer;->getLastFilterSize(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/miui/player/util/PlaylistRecoverer;-><init>(I)V

    sput-object v0, Lcom/miui/player/util/PlaylistRecoverer;->sInstance:Lcom/miui/player/util/PlaylistRecoverer;

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    sget-object v0, Lcom/miui/player/util/PlaylistRecoverer;->sInstance:Lcom/miui/player/util/PlaylistRecoverer;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private needRecover(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mForceRecover:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mLastFilterSize:I

    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer;->getLastFilterSize(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public markForceRecover()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mForceRecover:Z

    .line 27
    return-void
.end method

.method public recover(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/player/util/PlaylistRecoverer;->needRecover(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    :goto_0
    return v4

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidTrackIdArr(Landroid/content/Context;)[J

    move-result-object v2

    .line 39
    .local v2, trackIds:[J
    invoke-static {v2}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, audioSet:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio_id>536870911 OR audio_id NOT IN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, record:I
    if-lez v1, :cond_1

    .line 46
    invoke-static {v2}, Lcom/miui/player/provider/FavoriteCache;->recoverCache([J)I

    .line 48
    :cond_1
    invoke-static {v2}, Lcom/miui/player/service/ServiceHelper;->recoverQueue([J)I

    .line 50
    iput-boolean v4, p0, Lcom/miui/player/util/PlaylistRecoverer;->mForceRecover:Z

    .line 51
    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer;->getLastFilterSize(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/miui/player/util/PlaylistRecoverer;->mLastFilterSize:I

    .line 53
    const/4 v4, 0x1

    goto :goto_0
.end method
