.class Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;
.super Ljava/lang/Object;
.source "EqualizerActivity.java"

# interfaces
.implements Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/EqualizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EqualizerAdjustListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/miui/player/ui/view/VerticalSeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 377
    if-nez p3, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 382
    .local v2, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v2, :cond_0

    .line 386
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/player/ui/EqualizerActivity;->notifyServiceEqualizer(Z)V

    .line 388
    invoke-virtual {p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 389
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 390
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 391
    .local v0, i:I
    if-ltz v0, :cond_0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    .line 392
    invoke-virtual {p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->getProgress()I

    move-result v4

    sget v5, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MIN:I

    add-int v1, v4, v5

    .line 393
    .local v1, level:I
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v4, v4, Lcom/miui/player/ui/EqualizerActivity;->mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

    invoke-virtual {v4, v0, v1}, Lcom/miui/player/ui/view/EqualizerView;->setBand(II)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v2}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v1

    .line 401
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 402
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/EqualizerActivity;->getCurrentConfigData()[I

    move-result-object v0

    .line 403
    .local v0, custom:[I
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v2, v3, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->updateEqualizerConfig(Landroid/content/Context;I[I)I

    .line 405
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 406
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2, v3, v0, v3}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(I[IZ)V

    .line 410
    .end local v0           #custom:[I
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/EqualizerActivity;->getCurrentConfigData()[I

    move-result-object v0

    .line 415
    .local v0, custom:[I
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v1, v2, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->updateEqualizerConfig(Landroid/content/Context;I[I)I

    .line 417
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 418
    return-void
.end method
