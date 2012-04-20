.class public Lcom/miui/player/network/LyricDownloader;
.super Ljava/lang/Object;
.source "LyricDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/miui/player/network/LyricDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/LyricDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static createProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    .locals 5
    .parameter "context"
    .parameter "info"

    .prologue
    .line 116
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/miui/player/plugin/PlugInManager;->instance(Landroid/content/Context;I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v1

    .line 117
    .local v1, mgr:Lcom/miui/player/plugin/PlugInManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/plugin/PlugInManager;->getPlugInInterface(Landroid/content/Context;)Lcom/miui/player/plugin/base/PlugInInterface;

    move-result-object v2

    .line 119
    .local v2, pii:Lcom/miui/player/plugin/base/PlugInInterface;
    :try_start_0
    instance-of v3, v2, Lcom/miui/player/plugin/onlinelyric/LyricPlugIn;

    if-eqz v3, :cond_0

    .line 120
    check-cast v2, Lcom/miui/player/plugin/onlinelyric/LyricPlugIn;

    .end local v2           #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    invoke-interface {v2, p1}, Lcom/miui/player/plugin/onlinelyric/LyricPlugIn;->create(Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 126
    :goto_0
    return-object v3

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/miui/player/network/LyricDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    .locals 3
    .parameter "context"
    .parameter "searchInfo"
    .parameter "callback"

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/miui/player/network/LyricDownloader;->createProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    move-result-object v0

    .line 38
    .local v0, provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    if-nez v0, :cond_0

    .line 39
    sget-object v1, Lcom/miui/player/network/LyricDownloader;->TAG:Ljava/lang/String;

    const-string v2, "create provider failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    .line 43
    :cond_0
    new-instance v1, Lcom/miui/player/network/LyricDownloader$1;

    invoke-direct {v1, v0, p2}, Lcom/miui/player/network/LyricDownloader$1;-><init>(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V

    invoke-static {v1}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    .line 79
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static download(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    .locals 1
    .parameter "provider"
    .parameter "item"
    .parameter "callback"

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 89
    :cond_0
    new-instance v0, Lcom/miui/player/network/LyricDownloader$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/network/LyricDownloader$2;-><init>(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V

    invoke-static {v0}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static statistics(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 130
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/player/plugin/PlugInManager;->tryToGetInstance(I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v0

    .line 131
    .local v0, mgr:Lcom/miui/player/plugin/PlugInManager;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p0}, Lcom/miui/player/plugin/PlugInManager;->statistics(Z)V

    .line 134
    :cond_0
    return-void
.end method
