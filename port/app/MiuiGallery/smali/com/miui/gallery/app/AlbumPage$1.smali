.class Lcom/miui/gallery/app/AlbumPage$1;
.super Lcom/miui/gallery/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPage;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 116
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$000(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/StaticBackground;

    move-result-object v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v5, v5, v2, v3}, Lcom/miui/gallery/ui/StaticBackground;->layout(IIII)V

    .line 123
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mShowDetails:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$100(Lcom/miui/gallery/app/AlbumPage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$200(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/DetailsHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v2, p2, v1, p4, p5}, Lcom/miui/gallery/ui/DetailsHelper;->layout(IIII)V

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;

    move-result-object v0

    .line 130
    .local v0, config:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$400(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/AlbumView;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/miui/gallery/ui/SlotView$Spec;->titleViewHeight:I

    invoke-virtual {v1, p2, v2, p4, p5}, Lcom/miui/gallery/ui/AlbumView;->layout(IIII)V

    .line 134
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mInselectionMode:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$500(Lcom/miui/gallery/app/AlbumPage;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mGetContent:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$600(Lcom/miui/gallery/app/AlbumPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumPage;->access$400(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/AlbumView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/app/AlbumPage;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->mMatrix:[F

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mUserDistance:F
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumPage;->access$700(Lcom/miui/gallery/app/AlbumPage;)F

    move-result v4

    neg-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/miui/gallery/ui/SlotView$Spec;->titleViewHeight:I

    invoke-virtual {v1, v5, v2}, Lcom/miui/gallery/ui/PositionRepository;->setOffset(II)V

    .line 143
    return-void

    .line 126
    .end local v0           #config:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$400(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/AlbumView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage$1;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumPage;->access$300(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/GridDrawer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    goto :goto_0
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 147
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 149
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 150
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 151
    return-void
.end method
