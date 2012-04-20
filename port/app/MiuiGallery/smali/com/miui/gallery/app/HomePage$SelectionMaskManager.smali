.class Lcom/miui/gallery/app/HomePage$SelectionMaskManager;
.super Ljava/lang/Object;
.source "HomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionMaskManager"
.end annotation


# instance fields
.field private final SELECTION_MASK_ALPHA:I

.field private mSelectionMaskBottom:Landroid/view/View;

.field private mSelectionMaskCamera:Landroid/widget/ImageView;

.field private mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x80

    .line 743
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCamera:Landroid/widget/ImageView;

    .line 738
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

    .line 739
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskBottom:Landroid/view/View;

    .line 741
    iput v2, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->SELECTION_MASK_ALPHA:I

    .line 744
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 745
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 746
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskBottom:Landroid/view/View;

    const/high16 v1, 0x4300

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 747
    return-void
.end method


# virtual methods
.method public onEnterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$2000(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onLeaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 759
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 762
    return-void
.end method
