.class final Lcom/miui/player/ui/AlbumSearchResultActivity$1;
.super Ljava/lang/Object;
.source "AlbumSearchResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;Landroid/os/Handler;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runAsync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;

.field final synthetic val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

.field final synthetic val$strUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$strUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runAsync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;

    iput-object p3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

    iput-object p4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 342
    const/4 v2, 0x0

    .line 344
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$strUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/common/util/Network;->doHttpGet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 345
    .local v1, instream:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runAsync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runAsync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;->setInputStream(Ljava/io/InputStream;)V

    .line 347
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runAsync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;

    invoke-virtual {v3}, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;->run()V

    .line 348
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runAsync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;

    invoke-virtual {v3}, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 358
    .end local v1           #instream:Ljava/io/InputStream;
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$handler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 359
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

    invoke-virtual {v3, v2}, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;->setResult(Ljava/lang/Object;)V

    .line 360
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    :cond_1
    return-void

    .line 351
    .restart local v2       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
