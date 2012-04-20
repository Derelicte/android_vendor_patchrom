.class public Lcom/miui/player/ui/MediaPlaybackActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;
    }
.end annotation


# instance fields
.field mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

.field mBackToList:Z

.field mCurrentFragment:Landroid/app/Fragment;

.field private final mSwitchListener:Landroid/view/View$OnClickListener;

.field private mTitleBarController:Lcom/miui/player/ui/controller/TitleBarController;

.field mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackToList:Z

    .line 236
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$1;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSwitchListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private resetCurrent()V
    .locals 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    .line 217
    .local v0, active:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 218
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    const-string v4, "com.miui.player.NOWPLAYING_PLAYLIST"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 222
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    if-eq v0, v4, :cond_1

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    .line 226
    .local v1, deactive:Landroid/app/Fragment;
    :goto_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 227
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 228
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 229
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 231
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    if-ne v0, v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->updateVisible(Z)V

    .line 233
    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 234
    return-void

    .line 222
    .end local v1           #deactive:Landroid/app/Fragment;
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    goto :goto_0

    .line 231
    .restart local v1       #deactive:Landroid/app/Fragment;
    .restart local v2       #ft:Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setTitleBar(I)V
    .locals 3
    .parameter "quantity"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTitleBarController:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTitleBarController:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method private switchToAudioPlayer()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/TrackListFragment;->getNowplayingIndicatorMarginTop()I

    move-result v0

    .line 267
    .local v0, start:I
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->playAnimation(ZI)V

    .line 268
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/fragment/TrackListFragment;->playAnimation(Z)V

    .line 269
    return-void
.end method

.method private switchToTrackList()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/TrackListFragment;->getNowplayingIndicatorMarginTop()I

    move-result v0

    .line 273
    .local v0, end:I
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/fragment/TrackListFragment;->playAnimation(Z)V

    .line 274
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->playAnimation(ZI)V

    .line 275
    return-void
.end method


# virtual methods
.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.queuechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.player.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.player.playstatechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.miui.player.playbackcomplete"

    aput-object v2, v0, v1

    .line 118
    .local v0, actions:[Ljava/lang/String;
    return-object v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 2
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 178
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v1, p1, p2}, Lcom/miui/player/ui/fragment/TrackListFragment;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 180
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 181
    .local v0, quantity:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setTitleBar(I)V

    .line 182
    return-void

    .line 180
    .end local v0           #quantity:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 1
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->setService(Lcom/miui/player/service/IMediaPlaybackService;)V

    goto :goto_0
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 125
    .local v1, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    const-string v3, "com.miui.player.queuechanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v2

    .line 127
    .local v2, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Landroid/content/Loader;->forceLoad()V

    .line 132
    .end local v2           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/TrackListFragment;->notifyDataSetChanged()V

    .line 133
    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/TrackListFragment;->updateNowplayingFrame()V

    .line 135
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->setTitleBar(I)V

    .line 136
    return-void
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->isMultiChoiceModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchLoader(Z)V
    .locals 6
    .parameter "reset"

    .prologue
    const/4 v5, 0x2

    .line 160
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v3}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, playlistName:Ljava/lang/String;
    const-string v3, "nowplaying"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    .line 163
    .local v1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/content/Loader;->onContentChanged()V

    .line 173
    .end local v1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :goto_0
    return-void

    .line 166
    .restart local v1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 167
    .local v0, callback:Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 172
    .end local v0           #callback:Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;
    .end local v1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    goto :goto_0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->leaveMultiChoiceMode()Z

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackToList:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->switchFragment()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 46
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setContentView(I)V

    .line 48
    new-instance v1, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTitleBarController:Lcom/miui/player/ui/controller/TitleBarController;

    .line 49
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTitleBarController:Lcom/miui/player/ui/controller/TitleBarController;

    const v2, 0x7f0200ad

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setNavigatorRes(I)V

    .line 50
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTitleBarController:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v1, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 51
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTitleBarController:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setGotoNowplayingVisible(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 54
    .local v0, fm:Landroid/app/FragmentManager;
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    .line 55
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->setSwitchListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v1, v3}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->setHasOptionsMenu(Z)V

    .line 58
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/fragment/TrackListFragment;

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 59
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTitleBarController:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v2}, Lcom/miui/player/ui/controller/TitleBarController;->getNavigatorWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/fragment/TrackListFragment;->initLeftMargin(I)V

    .line 60
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/fragment/TrackListFragment;->setSwitchListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v1, v3}, Lcom/miui/player/ui/fragment/TrackListFragment;->setHasOptionsMenu(Z)V

    .line 63
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->resetCurrent()V

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/ui/fragment/TrackListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 210
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 71
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackToList:Z

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackToList:Z

    .line 72
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->resetCurrent()V

    .line 73
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 204
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 78
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setTitleBar(I)V

    .line 79
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onWindowFocusChanged(Z)V

    .line 84
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->onActiveChanged()Z

    .line 85
    return-void
.end method

.method switchFragment()V
    .locals 5

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, active:Landroid/app/Fragment;
    const/4 v1, 0x0

    .line 247
    .local v1, deactive:Landroid/app/Fragment;
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    if-ne v3, v4, :cond_0

    .line 248
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackToList:Z

    .line 249
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    .line 250
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 251
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->switchToAudioPlayer()V

    .line 258
    :goto_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 259
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 260
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 261
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 262
    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 263
    return-void

    .line 253
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 254
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAudioPlayerFragment:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    .line 255
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->switchToTrackList()V

    goto :goto_0
.end method
