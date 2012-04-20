.class Lcom/miui/player/ui/controller/HistoryBrowserController$NoHistoryFrame;
.super Ljava/lang/Object;
.source "HistoryBrowserController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/HistoryBrowserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoHistoryFrame"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCountView:Landroid/widget/TextView;

.field private final mFrame:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NoHistoryFrame;->mActivity:Landroid/app/Activity;

    .line 366
    const v0, 0x7f0c004e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NoHistoryFrame;->mFrame:Landroid/view/View;

    .line 367
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NoHistoryFrame;->mFrame:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v0, 0x7f0c0050

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NoHistoryFrame;->mCountView:Landroid/widget/TextView;

    .line 369
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 382
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 384
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refresh(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NoHistoryFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NoHistoryFrame;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NoHistoryFrame;->mFrame:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 373
    return-void

    .line 372
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
