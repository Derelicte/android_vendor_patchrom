.class Lcom/miui/gallery/app/StorageExplorerPageBase;
.super Lcom/miui/gallery/app/ActivityState;
.source "StorageExplorerPage.java"


# instance fields
.field protected mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field private mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 75
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPageBase$1;-><init>(Lcom/miui/gallery/app/StorageExplorerPageBase;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/StorageExplorerPageBase;)Lcom/miui/gallery/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 88
    new-instance v0, Lcom/miui/gallery/ui/StaticBackground;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 91
    const v0, 0x7f0b0053

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/StorageExplorerPageBase;->inflatePageView(II)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 99
    return-void
.end method
