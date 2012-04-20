.class Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$1;
.super Ljava/lang/Object;
.source "HistoryBrowserController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$1;->this$0:Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 159
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isMusicLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
