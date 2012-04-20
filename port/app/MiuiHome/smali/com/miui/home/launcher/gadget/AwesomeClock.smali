.class public Lcom/miui/home/launcher/gadget/AwesomeClock;
.super Landroid/widget/FrameLayout;
.source "AwesomeClock.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/Clock$ClockStyle;
.implements Lcom/miui/home/launcher/gadget/Gadget;


# instance fields
.field private mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

.field private mElementContext:Lmiui/app/screenelement/ScreenContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setWillNotDraw(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public getUpdateInterval()I
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, interval:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/AwesomeView;->getUpdateInterval()I

    move-result v0

    .line 69
    :cond_0
    if-lez v0, :cond_1

    .end local v0           #interval:I
    :goto_0
    return v0

    .restart local v0       #interval:I
    :cond_1
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public initConfig(Ljava/lang/String;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 60
    new-instance v0, Lmiui/app/screenelement/ScreenContext;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/app/screenelement/util/ZipResourceLoader;

    invoke-direct {v2, p1}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    .line 61
    return-void
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 90
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/gadget/AwesomeView;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/gadget/AwesomeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    .line 95
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/gadget/AwesomeView;->load(Lmiui/app/screenelement/ScreenContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v1}, Lmiui/app/screenelement/ResourceManager;->clear()V

    goto :goto_0
.end method

.method public onDeleted()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeView;->finish()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceManager;->clear()V

    .line 38
    :cond_1
    return-void
.end method

.method public onEditDisable()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onEditNormal()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeView;->pause()V

    .line 45
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeView;->resume()V

    .line 52
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 3
    .parameter "calendar"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/gadget/AwesomeView;->tick(J)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeView;->invalidate()V

    goto :goto_0
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 56
    return-void
.end method
