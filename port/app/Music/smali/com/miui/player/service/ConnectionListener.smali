.class public Lcom/miui/player/service/ConnectionListener;
.super Ljava/lang/Object;
.source "ConnectionListener.java"


# instance fields
.field private final mConnReceiver:Landroid/content/BroadcastReceiver;

.field mServcie:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/miui/player/service/ConnectionListener$1;

    invoke-direct {v0, p0}, Lcom/miui/player/service/ConnectionListener$1;-><init>(Lcom/miui/player/service/ConnectionListener;)V

    iput-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mConnReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static showNetworkHelperInfo(Lcom/miui/player/service/MediaPlaybackService;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    if-nez p0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.CONN_CHANGED_HINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    const-class v1, Lcom/miui/player/ui/ConnChangedHintActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    const-string v1, "is_online_allow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_1
    const v0, 0x7f080005

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showNetworkHelperInfo(Z)V
    .locals 1
    .parameter "isOnlineAllow"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    invoke-static {v0, p1}, Lcom/miui/player/service/ConnectionListener;->showNetworkHelperInfo(Lcom/miui/player/service/MediaPlaybackService;Z)V

    .line 99
    return-void
.end method


# virtual methods
.method public registerConnReceiver(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/miui/player/service/ConnectionListener;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    iput-object p1, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    .line 26
    return-void
.end method

.method saveFlowHint(Z)V
    .locals 14
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 63
    iget-object v9, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    .line 64
    .local v9, s:Lcom/miui/player/service/MediaPlaybackService;
    if-nez v9, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {v9}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v5

    .line 69
    .local v5, isWifiConnected:Z
    if-nez v5, :cond_0

    invoke-virtual {v9}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 73
    if-nez v5, :cond_2

    const-string v12, "other_connect_listen"

    invoke-static {v9, v12}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_2
    move v4, v11

    .line 76
    .local v4, isOnlineAllow:Z
    :goto_1
    invoke-virtual {v9}, Lcom/miui/player/service/MediaPlaybackService;->getQueue()[J

    move-result-object v8

    .line 77
    .local v8, queue:[J
    const/4 v7, 0x0

    .line 79
    .local v7, onlineCount:I
    move-object v0, v8

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_5

    aget-wide v1, v0, v3

    .line 80
    .local v1, i:J
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 79
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #arr$:[J
    .end local v1           #i:J
    .end local v3           #i$:I
    .end local v4           #isOnlineAllow:Z
    .end local v6           #len$:I
    .end local v7           #onlineCount:I
    .end local v8           #queue:[J
    :cond_4
    move v4, v10

    .line 73
    goto :goto_1

    .line 88
    .restart local v0       #arr$:[J
    .restart local v3       #i$:I
    .restart local v4       #isOnlineAllow:Z
    .restart local v6       #len$:I
    .restart local v7       #onlineCount:I
    .restart local v8       #queue:[J
    :cond_5
    if-eqz p1, :cond_6

    if-nez v7, :cond_7

    :cond_6
    if-nez v4, :cond_8

    array-length v12, v8

    if-ne v7, v12, :cond_8

    .line 89
    :cond_7
    invoke-direct {p0, v4}, Lcom/miui/player/service/ConnectionListener;->showNetworkHelperInfo(Z)V

    .line 92
    :cond_8
    if-nez v4, :cond_0

    invoke-virtual {v9}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 93
    array-length v12, v8

    if-ge v7, v12, :cond_9

    :goto_3
    invoke-virtual {v9, v11}, Lcom/miui/player/service/MediaPlaybackService;->updateTrackOnConnChange(Z)V

    goto :goto_0

    :cond_9
    move v11, v10

    goto :goto_3
.end method

.method public unregisterConnReceiver()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v1, p0, Lcom/miui/player/service/ConnectionListener;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    .line 33
    :cond_0
    return-void
.end method
