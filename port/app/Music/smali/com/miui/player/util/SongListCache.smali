.class public Lcom/miui/player/util/SongListCache;
.super Ljava/lang/Object;
.source "SongListCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/util/SongListCache$SongListWaiter;,
        Lcom/miui/player/util/SongListCache$SongListLoadHandler;,
        Lcom/miui/player/util/SongListCache$SongListResult;,
        Lcom/miui/player/util/SongListCache$SongListLoadRunnable;
    }
.end annotation


# static fields
.field private static final RANDOM_CLAUSE:Ljava/util/regex/Pattern;

.field private static sInstance:Lcom/miui/player/util/SongListCache;

.field private static sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private final sUrlToRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final sUrlToSongListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;",
            ">;"
        }
    .end annotation
.end field

.field private final sUrlToSongListWaiterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/util/SongListCache$SongListWaiter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/miui/player/util/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 38
    sput-object v0, Lcom/miui/player/util/SongListCache;->sInstance:Lcom/miui/player/util/SongListCache;

    .line 80
    const-string v0, "[&|].r=\\d*\\.\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/player/util/SongListCache;->RANDOM_CLAUSE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/util/SongListCache;->sUrlToSongListMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/util/SongListCache;->sUrlToRequestMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/util/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/miui/player/util/SongListCache$SongListLoadHandler;

    invoke-direct {v0, p0}, Lcom/miui/player/util/SongListCache$SongListLoadHandler;-><init>(Lcom/miui/player/util/SongListCache;)V

    iput-object v0, p0, Lcom/miui/player/util/SongListCache;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method private static ignoreRandomClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rawUrl"

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 88
    :goto_0
    return-object v1

    .line 86
    :cond_0
    sget-object v2, Lcom/miui/player/util/SongListCache;->RANDOM_CLAUSE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 87
    .local v0, matcher:Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, str:Ljava/lang/String;
    goto :goto_0
.end method

.method public static instance()Lcom/miui/player/util/SongListCache;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/miui/player/util/SongListCache;->sInstance:Lcom/miui/player/util/SongListCache;

    if-nez v0, :cond_0

    .line 41
    const-class v1, Lcom/miui/player/util/SongListCache;

    monitor-enter v1

    .line 42
    :try_start_0
    new-instance v0, Lcom/miui/player/util/SongListCache;

    invoke-direct {v0}, Lcom/miui/player/util/SongListCache;-><init>()V

    sput-object v0, Lcom/miui/player/util/SongListCache;->sInstance:Lcom/miui/player/util/SongListCache;

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    sget-object v0, Lcom/miui/player/util/SongListCache;->sInstance:Lcom/miui/player/util/SongListCache;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registInternel(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/util/SongListCache$SongListWaiter;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p2}, Lcom/miui/player/util/SongListCache;->ignoreRandomClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v0, p0, Lcom/miui/player/util/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v2, p0, Lcom/miui/player/util/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/miui/player/util/SongListCache;->sUrlToRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 103
    if-nez v0, :cond_3

    .line 104
    new-instance v0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;-><init>(Lcom/miui/player/util/SongListCache;Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/miui/player/util/SongListCache;->sUrlToRequestMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/miui/player/util/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    .line 108
    const-class v1, Lcom/miui/player/util/SongListCache;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v2, Lcom/miui/player/util/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_1

    .line 110
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lcom/miui/player/util/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 112
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_2
    sget-object v1, Lcom/miui/player/util/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 117
    :cond_3
    return-void

    .line 112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method handleLoadResult(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 7
    .parameter "url"
    .parameter "songList"

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "bad url == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    :cond_0
    invoke-static {p1}, Lcom/miui/player/util/SongListCache;->ignoreRandomClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, urlIgnoreRandom:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/util/SongListCache;->sUrlToRequestMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v5, p0, Lcom/miui/player/util/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 128
    .local v2, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/util/SongListCache$SongListWaiter;>;"
    iget-object v5, p0, Lcom/miui/player/util/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, cacheEnable:Z
    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/util/SongListCache$SongListWaiter;

    .line 133
    .local v4, waiter:Lcom/miui/player/util/SongListCache$SongListWaiter;
    invoke-interface {v4, p2}, Lcom/miui/player/util/SongListCache$SongListWaiter;->onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 135
    invoke-interface {v4}, Lcom/miui/player/util/SongListCache$SongListWaiter;->isCacheEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #waiter:Lcom/miui/player/util/SongListCache$SongListWaiter;
    :cond_2
    if-eqz v0, :cond_3

    .line 142
    iget-object v5, p0, Lcom/miui/player/util/SongListCache;->sUrlToSongListMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_3
    return-void
.end method

.method public registerWaiter(Landroid/content/Context;Lcom/miui/player/util/SongListCache$SongListWaiter;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    .locals 5
    .parameter "context"
    .parameter "waiter"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-interface {p2}, Lcom/miui/player/util/SongListCache$SongListWaiter;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 76
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/miui/player/util/SongListCache;->sUrlToSongListMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/miui/player/util/SongListCache;->ignoreRandomClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 70
    .local v0, songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    if-eqz v0, :cond_1

    .line 71
    invoke-interface {p2, v0}, Lcom/miui/player/util/SongListCache$SongListWaiter;->onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/player/util/SongListCache;->registInternel(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/util/SongListCache$SongListWaiter;)V

    move-object v0, v2

    .line 76
    goto :goto_0
.end method
