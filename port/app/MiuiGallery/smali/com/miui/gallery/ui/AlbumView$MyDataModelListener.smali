.class Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;
.super Ljava/lang/Object;
.source "AlbumView.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumView;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumView;Lcom/miui/gallery/ui/AlbumView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;-><init>(Lcom/miui/gallery/ui/AlbumView;)V

    return-void
.end method


# virtual methods
.method public onContentInvalidated()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumView;->invalidate()V

    .line 165
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 168
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/AlbumView;->setSlotCount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumView;->getVisibleStart()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumView;->getVisibleEnd()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 175
    .local v0, center:I
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    #calls: Lcom/miui/gallery/ui/AlbumView;->updateVisibleRange(II)V
    invoke-static {v2, v0, v0}, Lcom/miui/gallery/ui/AlbumView;->access$100(Lcom/miui/gallery/ui/AlbumView;II)V

    .line 177
    .end local v0           #center:I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumView;->getVisibleStart()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/AlbumView;->getVisibleEnd()I

    move-result v4

    #calls: Lcom/miui/gallery/ui/AlbumView;->updateVisibleRange(II)V
    invoke-static {v2, v3, v4}, Lcom/miui/gallery/ui/AlbumView;->access$100(Lcom/miui/gallery/ui/AlbumView;II)V

    .line 178
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    #getter for: Lcom/miui/gallery/ui/AlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumView;->access$200(Lcom/miui/gallery/ui/AlbumView;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, photosText:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlbumView;->updateTitleView(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumView;->invalidate()V

    .line 181
    return-void
.end method

.method public onWindowContentChanged(ILcom/miui/gallery/ui/DisplayItem;Lcom/miui/gallery/ui/DisplayItem;)V
    .locals 1
    .parameter "slotIndex"
    .parameter "old"
    .parameter "update"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/AlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;->this$0:Lcom/miui/gallery/ui/AlbumView;

    #calls: Lcom/miui/gallery/ui/AlbumView;->putSlotContent(ILcom/miui/gallery/ui/DisplayItem;)V
    invoke-static {v0, p1, p3}, Lcom/miui/gallery/ui/AlbumView;->access$300(Lcom/miui/gallery/ui/AlbumView;ILcom/miui/gallery/ui/DisplayItem;)V

    .line 187
    return-void
.end method
