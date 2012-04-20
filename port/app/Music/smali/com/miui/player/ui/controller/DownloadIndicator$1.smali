.class Lcom/miui/player/ui/controller/DownloadIndicator$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/DownloadIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/DownloadIndicator;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/DownloadIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/miui/player/ui/controller/DownloadIndicator$1;->this$0:Lcom/miui/player/ui/controller/DownloadIndicator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/player/ui/controller/DownloadIndicator$1;->this$0:Lcom/miui/player/ui/controller/DownloadIndicator;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/DownloadIndicator;->downloadRefresh()V

    .line 151
    return-void
.end method
