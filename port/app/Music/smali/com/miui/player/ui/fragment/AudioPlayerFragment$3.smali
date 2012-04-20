.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$3;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;->setActiveIndexer(I)V
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
    .line 496
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$3;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$3;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$3;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->refreshNow()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->queueNextRefresh(J)V

    .line 501
    return-void
.end method
