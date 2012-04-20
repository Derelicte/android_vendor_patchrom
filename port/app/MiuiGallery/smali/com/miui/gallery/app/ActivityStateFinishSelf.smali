.class public abstract Lcom/miui/gallery/app/ActivityStateFinishSelf;
.super Lcom/miui/gallery/app/ActivityState;
.source "ActivityStateFinishSelf.java"


# instance fields
.field private mIsActive:Z

.field private mStartFromThirdParty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mIsActive:Z

    return-void
.end method


# virtual methods
.method protected isActive()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mIsActive:Z

    return v0
.end method

.method protected isStartFromThirdParty()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mStartFromThirdParty:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 16
    const-string v0, "startfrom-thirdparty"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mStartFromThirdParty:Z

    .line 17
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mIsActive:Z

    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mIsActive:Z

    .line 41
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 43
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mStartFromThirdParty:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->isTriggerOnPauseByAndroidActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->finishAllStates()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityStateFinishSelf;->mIsActive:Z

    .line 31
    return-void
.end method
