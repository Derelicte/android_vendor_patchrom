.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricChooseRunnable"
.end annotation


# instance fields
.field final mArtistName:Ljava/lang/String;

.field final mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

.field final mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "track"
    .parameter "artist"
    .parameter "provider"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/player/plugin/onlinelyric/LyricProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p5, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput-object p2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mTrackName:Ljava/lang/String;

    .line 1253
    iput-object p3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mArtistName:Ljava/lang/String;

    .line 1254
    iput-object p4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    .line 1255
    iput-object p5, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    .line 1256
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1260
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v2, v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v2, v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v2, v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1262
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1265
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1266
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v2, v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v3, 0x7f080071

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1299
    :goto_0
    return-void

    .line 1270
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_3

    .line 1271
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1274
    :cond_3
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 1275
    .local v1, names:[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_5

    .line 1276
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    .line 1277
    .local v8, item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    invoke-virtual {v8}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    .line 1278
    .local v6, artist:Ljava/lang/String;
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->getTrack()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    if-eqz v6, :cond_4

    .end local v6           #artist:Ljava/lang/String;
    :goto_3
    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1275
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1278
    .restart local v6       #artist:Ljava/lang/String;
    :cond_4
    const-string v6, ""

    goto :goto_3

    .line 1281
    .end local v6           #artist:Ljava/lang/String;
    .end local v8           #item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    :cond_5
    new-instance v0, Lcom/miui/player/ui/SingleChoiceDialog;

    new-instance v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable$1;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable$1;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;)V

    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v4, -0x1

    const v5, 0x7f080082

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/SingleChoiceDialog;-><init>([Ljava/lang/CharSequence;Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;Landroid/content/Context;II)V

    .line 1298
    .local v0, scd:Lcom/miui/player/ui/SingleChoiceDialog;
    invoke-virtual {v0}, Lcom/miui/player/ui/SingleChoiceDialog;->show()V

    goto :goto_0
.end method
