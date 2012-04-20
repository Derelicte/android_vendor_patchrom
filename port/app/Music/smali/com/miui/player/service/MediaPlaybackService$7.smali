.class Lcom/miui/player/service/MediaPlaybackService$7;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/MediaPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 748
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 750
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2, v4}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 751
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/miui/player/service/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 752
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 758
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-static {v2}, Lcom/miui/player/util/SqlUtils;->getCardId(Landroid/content/Context;)I

    move-result v1

    .line 760
    .local v1, cardId:I
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 761
    :cond_2
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v3, v2, Lcom/miui/player/service/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/miui/player/service/MediaPlaybackService;->mMediaMountedCount:I

    .line 762
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iput v1, v2, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    .line 763
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->reloadQueue()V

    .line 764
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iput-boolean v4, v2, Lcom/miui/player/service/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 765
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v3, "com.miui.player.queuechanged"

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$7;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v3, "meta_changed_track"

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    goto :goto_0

    .line 768
    .end local v1           #cardId:I
    :cond_3
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 769
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v3, "finish end"

    invoke-static {v2, v3}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    invoke-static {}, Lcom/miui/player/util/FolderProvider;->instance()Lcom/miui/player/util/FolderProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/util/FolderProvider;->markForceUpdate()V

    goto :goto_0
.end method
