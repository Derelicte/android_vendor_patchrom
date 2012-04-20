.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;
.super Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
.source "AudioPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricAsyncChooseRunnable"
.end annotation


# instance fields
.field final mArtistName:Ljava/lang/String;

.field final mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "track"
    .parameter "artist"

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;-><init>()V

    .line 1219
    iput-object p2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->mTrackName:Ljava/lang/String;

    .line 1220
    iput-object p3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->mArtistName:Ljava/lang/String;

    .line 1221
    return-void
.end method


# virtual methods
.method public isAutoChoose()Z
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 1230
    const/4 v5, 0x0

    .line 1231
    .local v5, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->mInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1232
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1233
    .restart local v5       #infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    .line 1234
    .local v7, info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1238
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v8, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->mTrackName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->mArtistName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;->mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1239
    return-void
.end method
