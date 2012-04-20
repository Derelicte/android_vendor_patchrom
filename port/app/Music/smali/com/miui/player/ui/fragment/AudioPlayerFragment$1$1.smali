.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$1$1;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$1$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$1$1;->this$1:Lcom/miui/player/ui/fragment/AudioPlayerFragment$1;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$1;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    .line 331
    return-void
.end method
