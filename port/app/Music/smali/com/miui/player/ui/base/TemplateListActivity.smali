.class public abstract Lcom/miui/player/ui/base/TemplateListActivity;
.super Landroid/app/Activity;
.source "TemplateListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;,
        Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;,
        Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;,
        Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;
    }
.end annotation


# instance fields
.field mFromSelf:Z

.field private final mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mPaused:Z

.field mRecovered:Z

.field private final mRecoveredReceiver:Landroid/content/BroadcastReceiver;

.field final mRescanHandler:Landroid/os/Handler;

.field private final mServiceStatusListener:Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

.field private mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mPaused:Z

    .line 176
    iput-boolean v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mFromSelf:Z

    .line 177
    iput-boolean v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecovered:Z

    .line 178
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$1;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecoveredReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mServiceStatusListener:Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

    .line 247
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$2;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    .line 256
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$3;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    return-void
.end method


# virtual methods
.method public enterBatchSelectionMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    .line 368
    .local v2, v:Landroid/widget/AbsListView;
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 369
    check-cast v0, Landroid/widget/ListView;

    .line 370
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 371
    invoke-virtual {v0, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 372
    const/4 v1, 0x1

    .line 379
    .end local v0           #lv:Landroid/widget/ListView;
    :cond_0
    :goto_0
    return v1

    .line 375
    :cond_1
    invoke-virtual {v2, v5, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 376
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultMargin()I
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 388
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    return-object v0
.end method

.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 0
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 287
    return-void
.end method

.method protected handleLoaderReset(I)V
    .locals 0
    .parameter "loaderId"

    .prologue
    .line 288
    return-void
.end method

.method protected handleRecoverd()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    return-void
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 195
    return-void
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mPaused:Z

    return v0
.end method

.method public launchLoader(Z)V
    .locals 6
    .parameter "reset"

    .prologue
    const/4 v5, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    move-result-object v1

    .line 349
    .local v1, info:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    if-eqz v1, :cond_1

    .line 350
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;

    const-wide/16 v3, 0x1f4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;J)V

    .line 351
    .local v0, callback:Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v2

    .line 352
    .local v2, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 357
    .end local v0           #callback:Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;
    .end local v2           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_1
    return-void
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method protected needBindToService()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan finished!"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 78
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 58
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->setVolumeControlStream(I)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onCreateContent(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->needBindToService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {p0, p0}, Lcom/miui/player/service/ServiceHelper;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/miui/player/service/ServiceHelper$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;

    .line 70
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.RECOVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecoveredReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void

    .line 67
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    goto :goto_0
.end method

.method protected onCreateContent(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 285
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->leaveBatchSelectionMode()Z

    .line 85
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;

    invoke-static {v0}, Lcom/miui/player/service/ServiceHelper;->unbindFromService(Lcom/miui/player/service/ServiceHelper$ServiceToken;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecoveredReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/player/ui/UIHelper;->unregistBroadcastReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 4
    .parameter "enabled"
    .parameter "lv"

    .prologue
    const/4 v3, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 401
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 403
    .local v1, h:I
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    if-eqz p1, :cond_1

    .end local v1           #h:I
    :goto_0
    invoke-static {v2, v3, v3, v3, v1}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 405
    :cond_0
    return-void

    .line 403
    .restart local v1       #h:I
    :cond_1
    neg-int v1, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 152
    const/4 v1, 0x0

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 169
    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    return v0

    .line 155
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    move v1, v0

    .line 157
    goto :goto_0

    .line 159
    :sswitch_1
    invoke-static {p0}, Lcom/miui/player/service/SleepModeManager;->toggleSleepMode(Landroid/app/Activity;)V

    move v1, v0

    .line 161
    goto :goto_0

    .line 163
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/MusicSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v0

    .line 165
    goto :goto_0

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mServiceStatusListener:Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;->unregister()V

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/player/ui/UIHelper;->unregistBroadcastReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 120
    iput-boolean v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mPaused:Z

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/16 v2, 0xf

    const/4 v3, 0x0

    .line 143
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    const/16 v0, 0x63

    const v1, 0x7f080009

    invoke-interface {p1, v3, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020047

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 145
    const/16 v0, 0xe

    const/16 v1, 0x64

    const v2, 0x7f080012

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 147
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mServiceStatusListener:Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getObservedServiceActions()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;->register([Ljava/lang/String;)V

    .line 98
    invoke-static {p0}, Lcom/miui/player/util/PlaylistRecoverer;->instance(Landroid/content/Context;)Lcom/miui/player/util/PlaylistRecoverer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/player/util/PlaylistRecoverer;->recover(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecovered:Z

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->handleRecoverd()V

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mFromSelf:Z

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.RECOVERED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mPaused:Z

    .line 111
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 225
    invoke-static {p2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/player/service/IMediaPlaybackService;

    move-result-object v0

    .line 226
    .local v0, serv:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 228
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V

    .line 230
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    .line 240
    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 393
    .local v0, list:Landroid/widget/AbsListView;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 396
    :cond_0
    return-void
.end method
