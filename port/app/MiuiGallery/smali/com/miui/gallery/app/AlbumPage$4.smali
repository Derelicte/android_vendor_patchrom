.class Lcom/miui/gallery/app/AlbumPage$4;
.super Lcom/miui/gallery/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPage$4;->this$0:Lcom/miui/gallery/app/AlbumPage;

    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$4;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #calls: Lcom/miui/gallery/app/AlbumPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/miui/gallery/app/AlbumPage;->access$900(Lcom/miui/gallery/app/AlbumPage;I)V

    .line 386
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$4;->this$0:Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumPage;->onLongTap(I)V

    .line 401
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$4;->this$0:Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumPage;->onSingleTapUp(I)V

    .line 396
    return-void
.end method

.method public onUp()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$4;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #calls: Lcom/miui/gallery/app/AlbumPage;->onUp()V
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPage;->access$1000(Lcom/miui/gallery/app/AlbumPage;)V

    .line 391
    return-void
.end method
