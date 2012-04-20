.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnRepeatClickListener;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnRepeatClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnRepeatClickListener;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;)V
    .locals 1
    .parameter "scanInfo"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnRepeatClickListener;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->refreshTimeIndicator()V

    .line 660
    return-void
.end method
