.class public Lcom/miui/player/ui/AlbumSearchResultActivity;
.super Landroid/app/Activity;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;
    }
.end annotation


# instance fields
.field private mAlbumGridView:Landroid/widget/GridView;

.field mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSavePath:Ljava/lang/String;

.field mSearchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;

    .line 320
    return-void
.end method

.method static doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;Landroid/os/Handler;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;)Z
    .locals 1
    .parameter "strUrl"
    .parameter "runAsync"
    .parameter "handler"
    .parameter "runSync"

    .prologue
    .line 335
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    .line 338
    :cond_0
    new-instance v0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/miui/player/ui/AlbumSearchResultActivity$1;-><init>(Ljava/lang/String;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    .line 366
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method notifyDownload()V
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 258
    .local v1, myIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, i:Landroid/content/Intent;
    const-string v2, "album"

    const-string v3, "album"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "artist"

    const-string v3, "artist"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v2, "raw_album"

    const-string v3, "raw_album"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v2, "raw_artist"

    const-string v3, "raw_artist"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 69
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "save_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->finish()V

    .line 77
    :cond_1
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    .line 78
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method
