.class Lcom/miui/gallery/app/AlbumSetPage$1;
.super Lcom/miui/gallery/ui/GLView;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 123
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$000(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/StaticBackground;

    move-result-object v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/miui/gallery/ui/StaticBackground;->layout(IIII)V

    .line 129
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$100(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/app/EyePosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/EyePosition;->resetPosition()V

    .line 131
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$200(Lcom/miui/gallery/app/AlbumSetPage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$300(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/DetailsHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v2, p2, v1, p4, p5}, Lcom/miui/gallery/ui/DetailsHelper;->layout(IIII)V

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    move-result-object v0

    .line 139
    .local v0, config:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$500(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/AlbumSetView;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/miui/gallery/ui/SlotView$Spec;->titleViewHeight:I

    invoke-virtual {v1, p2, v2, p4, p5}, Lcom/miui/gallery/ui/AlbumSetView;->layout(IIII)V

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mInselectionMode:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$600(Lcom/miui/gallery/app/AlbumSetPage;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mGetAlbum:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$700(Lcom/miui/gallery/app/AlbumSetPage;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mGetContent:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$800(Lcom/miui/gallery/app/AlbumSetPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumSetPage;->access$500(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/AlbumSetView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/app/AlbumSetPage;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/miui/gallery/ui/SlotView$Spec;->titleViewHeight:I

    invoke-virtual {v1, v4, v2}, Lcom/miui/gallery/ui/PositionRepository;->setOffset(II)V

    .line 149
    return-void

    .line 134
    .end local v0           #config:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$500(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/AlbumSetView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumSetPage;->access$400(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/GridDrawer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumSetView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    goto :goto_0
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 153
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mX:F
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumSetPage;->access$900(Lcom/miui/gallery/app/AlbumSetPage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mY:F
    invoke-static {v3}, Lcom/miui/gallery/app/AlbumSetPage;->access$1000(Lcom/miui/gallery/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mZ:F
    invoke-static {v3}, Lcom/miui/gallery/app/AlbumSetPage;->access$1100(Lcom/miui/gallery/app/AlbumSetPage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 157
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 158
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 159
    return-void
.end method
