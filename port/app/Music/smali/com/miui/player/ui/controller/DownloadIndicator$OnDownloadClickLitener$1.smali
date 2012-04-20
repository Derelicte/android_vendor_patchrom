.class Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener$1;
.super Ljava/lang/Object;
.source "DownloadIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener$1;->this$1:Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener$1;->this$1:Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;

    iget-object v0, v0, Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;->this$0:Lcom/miui/player/ui/controller/DownloadIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/DownloadIndicator;->downloadRefresh(I)V

    .line 119
    return-void
.end method
