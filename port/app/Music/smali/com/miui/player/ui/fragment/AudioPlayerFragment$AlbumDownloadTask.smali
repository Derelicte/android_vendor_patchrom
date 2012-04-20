.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;
.super Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;
.source "AudioPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumDownloadTask"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mModifyId3Success:Z

.field private final mTrackId:J

.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;ZJJ)V
    .locals 0
    .parameter
    .parameter "metaInfo"
    .parameter "searchInfo"
    .parameter "modifyId3Success"
    .parameter "trackId"
    .parameter "albumId"

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    .line 1357
    invoke-direct {p0, p2, p3}, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;-><init>(Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;)V

    .line 1358
    iput-boolean p4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mModifyId3Success:Z

    .line 1359
    iput-wide p5, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mTrackId:J

    .line 1360
    iput-wide p7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mAlbumId:J

    .line 1361
    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1350
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1365
    invoke-super {p0, p1}, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1367
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1369
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-wide v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mTrackId:J

    iget-wide v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mAlbumId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/meta/AlbumManager;->getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;

    move-result-object v0

    .line 1373
    if-eqz v0, :cond_2

    .line 1374
    if-nez p1, :cond_1

    .line 1375
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1377
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_2
    if-nez p1, :cond_4

    .line 1381
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v1, 0x7f080085

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1408
    :cond_3
    :goto_0
    return-void

    .line 1387
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mMetaInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v1, v0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    .line 1388
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mMetaInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v0, v0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .line 1389
    iget-boolean v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mModifyId3Success:Z

    if-eqz v2, :cond_5

    .line 1390
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mSearchInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v1, v0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    .line 1391
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mSearchInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v0, v0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .line 1393
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1397
    :cond_6
    const-string v2, "album"

    invoke-static {v1, v0, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1399
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1400
    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v4, v4, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const-class v5, Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1401
    const-string v4, "search_result"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1402
    const-string v4, "save_path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    const-string v2, "album"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    const-string v1, "artist"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1405
    const-string v0, "raw_album"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mMetaInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v1, v1, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1406
    const-string v0, "raw_artist"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->mMetaInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v1, v1, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1407
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/16 v1, 0x1e

    invoke-virtual {v0, v3, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
