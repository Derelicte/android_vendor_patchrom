.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;

.field final synthetic val$lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;Lcom/miui/player/plugin/onlinelyric/LyricContent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;

    iput-object p2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->val$lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1334
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->val$lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;

    if-nez v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v1, 0x7f080071

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1343
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const-string v1, "lyric"

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->requestUpdate(Ljava/lang/String;)V

    goto :goto_0
.end method
