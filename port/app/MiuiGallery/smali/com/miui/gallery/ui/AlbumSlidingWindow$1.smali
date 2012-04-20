.class Lcom/miui/gallery/ui/AlbumSlidingWindow$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumSlidingWindow;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumView$Model;IILcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumSlidingWindow;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$1;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    #calls: Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->onLoadBitmapDone()V
    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->access$000(Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$1;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/miui/gallery/ui/AlbumSlidingWindow;->updateSlotContent(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$100(Lcom/miui/gallery/ui/AlbumSlidingWindow;I)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
