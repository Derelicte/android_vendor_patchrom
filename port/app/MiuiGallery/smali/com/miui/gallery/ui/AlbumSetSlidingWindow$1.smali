.class Lcom/miui/gallery/ui/AlbumSetSlidingWindow$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumSetSlidingWindow;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetView$Model;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$1;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 103
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    #calls: Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->onLoadBitmapDone()V
    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->access$000(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;)V

    .line 104
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
