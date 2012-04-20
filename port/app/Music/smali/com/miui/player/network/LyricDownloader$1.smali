.class final Lcom/miui/player/network/LyricDownloader$1;
.super Ljava/lang/Object;
.source "LyricDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/network/LyricDownloader;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

.field final synthetic val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;


# direct methods
.method constructor <init>(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/player/network/LyricDownloader$1;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    iput-object p2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 47
    const/4 v4, 0x0

    .line 49
    .local v4, success:Z
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    invoke-interface {v5}, Lcom/miui/player/plugin/onlinelyric/LyricProvider;->requestList()Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 51
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v5}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->isAutoChoose()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    .line 54
    .local v1, info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    invoke-interface {v5, v1}, Lcom/miui/player/plugin/onlinelyric/LyricProvider;->requestItem(Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v3, newList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    iget-object v6, p0, Lcom/miui/player/network/LyricDownloader$1;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    invoke-virtual {v5, v6, v3}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 58
    const/4 v4, 0x1

    .line 72
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    .end local v3           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v5}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 73
    invoke-static {v4}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    .line 75
    .end local v2           #infoList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    :goto_1
    return-void

    .line 64
    .restart local v2       #infoList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    iget-object v6, p0, Lcom/miui/player/network/LyricDownloader$1;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    invoke-virtual {v5, v6, v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    const/4 v4, 0x1

    goto :goto_0

    .line 68
    .end local v2           #infoList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    :catch_0
    move-exception v5

    .line 72
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v5}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 73
    invoke-static {v4}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_1

    .line 69
    :catch_1
    move-exception v5

    .line 72
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v5}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 73
    invoke-static {v4}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_1

    .line 70
    :catch_2
    move-exception v5

    .line 72
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v5}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 73
    invoke-static {v4}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v6}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 73
    invoke-static {v4}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    throw v5
.end method
