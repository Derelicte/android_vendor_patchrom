.class public Lcom/miui/gallery/app/PickerActivity;
.super Lcom/miui/gallery/app/AbstractGalleryActivity;
.source "PickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 84
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0020

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->finish()V

    .line 95
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 44
    .local v0, isDialog:Z
    if-nez v0, :cond_0

    .line 45
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/PickerActivity;->requestWindowFeature(I)Z

    .line 46
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/PickerActivity;->requestWindowFeature(I)Z

    .line 49
    :cond_0
    const v2, 0x7f04000d

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/PickerActivity;->setContentView(I)V

    .line 51
    if-eqz v0, :cond_1

    .line 54
    const v2, 0x7f0b0020

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v2, 0x7f0b0021

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/ui/GLRootView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/GLRootView;->setZOrderOnTop(Z)V

    .line 62
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 67
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b00a1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->finish()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
