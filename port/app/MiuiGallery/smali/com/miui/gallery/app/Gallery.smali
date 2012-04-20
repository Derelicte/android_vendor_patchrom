.class public final Lcom/miui/gallery/app/Gallery;
.super Lcom/miui/gallery/app/AbstractGalleryActivity;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mActionBar:Lcom/miui/gallery/app/GalleryActionBar;

.field private mVersionCheckDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 139
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 134
    .restart local v1       #type:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 136
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "Gallery"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent()V
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 103
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    const-string v3, "Gallery"

    const-string v4, "action PICK is not supported"

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, type:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    const-string v3, "/image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_1
    const-string v3, "/video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    .end local v2           #type:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 99
    :cond_4
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->startDefaultPage()V

    goto :goto_0
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 121
    :goto_0
    const-string v1, "get-content"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    invoke-static {p0, p1}, Lcom/miui/gallery/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 123
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/gallery/app/StateManager;->setLaunchGalleryOnTop(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 128
    return-void

    .line 118
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 144
    const-string v0, "slideshow"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/miui/gallery/app/StateManager;->setLaunchGalleryOnTop(Z)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 148
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/gallery/data/MediaItem;

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    invoke-virtual {v0, v5}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 164
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 165
    if-nez v3, :cond_3

    .line 166
    const v0, 0x7f0d0053

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->finish()V

    goto :goto_0

    .line 171
    :cond_3
    if-nez v0, :cond_4

    .line 172
    invoke-static {p0, p1}, Lcom/miui/gallery/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    .line 173
    const-string v2, "type-bits"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/StateManager;->setLaunchGalleryOnTop(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 178
    :cond_4
    const-string v4, "vnd.android.cursor.dir"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 180
    const-string v3, "mediaTypes"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 181
    if-eqz v3, :cond_5

    .line 182
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "mediaTypes"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 186
    :cond_5
    invoke-virtual {v2, v0}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 187
    const/4 v0, 0x0

    .line 188
    if-eqz v3, :cond_6

    .line 189
    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    .line 191
    :cond_6
    if-eqz v0, :cond_8

    .line 192
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    const-string v0, "media-path"

    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 196
    :cond_7
    const-string v0, "media-path"

    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 200
    :cond_8
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 203
    :cond_9
    invoke-virtual {v2, v0}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 204
    invoke-virtual {v2, v0}, Lcom/miui/gallery/data/DataManager;->getDefaultSetOf(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;

    move-result-object v2

    .line 206
    const-string v3, "SingleItemOnly"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 207
    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    .line 208
    const-string v3, "media-set-path"

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_a
    const-string v2, "media-item-path"

    invoke-virtual {v0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "startfrom-thirdparty"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/gallery/app/Gallery;->mActionBar:Lcom/miui/gallery/app/GalleryActionBar;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 239
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 286
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 p1, 0x0

    .line 65
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/Gallery;->requestWindowFeature(I)Z

    .line 66
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/Gallery;->requestWindowFeature(I)Z

    .line 67
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/Gallery;->requestWindowFeature(I)Z

    .line 69
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/Gallery;->setContentView(I)V

    .line 70
    new-instance v0, Lcom/miui/gallery/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/GalleryActionBar;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/app/Gallery;->mActionBar:Lcom/miui/gallery/app/GalleryActionBar;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, "Gallery"

    const-string v1, "Gallery savedInstanceState != null"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/Gallery;->initializeByIntent()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 221
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onDestroy()V

    .line 250
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 251
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/StateManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 227
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 231
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onPause()V

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 274
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 262
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onResume()V

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 266
    :cond_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDefaultPage()V
    .locals 4

    .prologue
    .line 106
    invoke-static {p0}, Lcom/miui/gallery/picasasource/PicasaSource;->showSignInReminder(Landroid/app/Activity;)V

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 111
    invoke-static {p0}, Lcom/miui/gallery/picasasource/PicasaSource;->getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 115
    :cond_0
    return-void
.end method
