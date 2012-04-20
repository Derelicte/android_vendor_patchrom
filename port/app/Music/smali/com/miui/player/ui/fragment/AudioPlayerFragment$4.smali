.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$4;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;->showDownloadDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$4;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$4;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 964
    return-void
.end method
