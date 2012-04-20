.class Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;
.super Ljava/lang/Object;
.source "AlbumSetView.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSetView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumSetView;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumSetView;Lcom/miui/gallery/ui/AlbumSetView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;-><init>(Lcom/miui/gallery/ui/AlbumSetView;)V

    return-void
.end method


# virtual methods
.method public onContentInvalidated()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V

    .line 259
    return-void
.end method

.method public onSizeChanged(IIJ)V
    .locals 4
    .parameter "size"
    .parameter "totalMediaObjectCount"
    .parameter "showTypeVersion"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/AlbumSetView;->setSlotCount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 242
    .local v0, center:I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    #calls: Lcom/miui/gallery/ui/AlbumSetView;->updateVisibleRange(II)V
    invoke-static {v1, v0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->access$100(Lcom/miui/gallery/ui/AlbumSetView;II)V

    .line 244
    .end local v0           #center:I
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleStart()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleEnd()I

    move-result v3

    #calls: Lcom/miui/gallery/ui/AlbumSetView;->updateVisibleRange(II)V
    invoke-static {v1, v2, v3}, Lcom/miui/gallery/ui/AlbumSetView;->access$100(Lcom/miui/gallery/ui/AlbumSetView;II)V

    .line 245
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/AlbumSetView;->updateTitleView(I)V

    .line 247
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    #calls: Lcom/miui/gallery/ui/AlbumSetView;->updateViewVisibility(I)V
    invoke-static {v1, p1}, Lcom/miui/gallery/ui/AlbumSetView;->access$200(Lcom/miui/gallery/ui/AlbumSetView;I)V

    .line 248
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V

    .line 249
    return-void
.end method

.method public onWindowContentChanged(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V
    .locals 1
    .parameter "slot"
    .parameter "old"
    .parameter "update"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    #calls: Lcom/miui/gallery/ui/AlbumSetView;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V
    invoke-static {v0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetView;->access$300(Lcom/miui/gallery/ui/AlbumSetView;ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    #calls: Lcom/miui/gallery/ui/AlbumSetView;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V
    invoke-static {v0, p1, p3}, Lcom/miui/gallery/ui/AlbumSetView;->access$400(Lcom/miui/gallery/ui/AlbumSetView;ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 254
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V

    .line 255
    return-void
.end method
