.class Lcom/miui/player/service/ConnectionListener$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/ConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConnectivityInit:Z

.field final synthetic this$0:Lcom/miui/player/service/ConnectionListener;


# direct methods
.method constructor <init>(Lcom/miui/player/service/ConnectionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/player/service/ConnectionListener$1;->this$0:Lcom/miui/player/service/ConnectionListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/ConnectionListener$1;->mConnectivityInit:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 42
    iget-object v5, p0, Lcom/miui/player/service/ConnectionListener$1;->this$0:Lcom/miui/player/service/ConnectionListener;

    iget-object v2, v5, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    .line 43
    .local v2, s:Lcom/miui/player/service/MediaPlaybackService;
    if-nez v2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-boolean v0, p0, Lcom/miui/player/service/ConnectionListener$1;->mConnectivityInit:Z

    .line 48
    .local v0, connectivityInit:Z
    iput-boolean v3, p0, Lcom/miui/player/service/ConnectionListener$1;->mConnectivityInit:Z

    .line 49
    if-eqz v0, :cond_0

    .line 51
    const-string v5, "flow_save_hint"

    invoke-static {v2, v5}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 52
    .local v1, hint:Z
    iget-object v5, p0, Lcom/miui/player/service/ConnectionListener$1;->this$0:Lcom/miui/player/service/ConnectionListener;

    invoke-virtual {v5, v1}, Lcom/miui/player/service/ConnectionListener;->saveFlowHint(Z)V

    .line 56
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->updateMetaOnConnChanged(Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method
