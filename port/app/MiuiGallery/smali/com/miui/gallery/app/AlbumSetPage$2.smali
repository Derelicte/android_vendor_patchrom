.class Lcom/miui/gallery/app/AlbumSetPage$2;
.super Lcom/miui/gallery/ui/SlotView$SimpleListener;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumSetPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage$2;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$2;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #calls: Lcom/miui/gallery/app/AlbumSetPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->access$1400(Lcom/miui/gallery/app/AlbumSetPage;I)V

    .line 438
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$2;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->onLongTap(I)V

    .line 453
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$2;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->onSingleTapUp(I)V

    .line 448
    return-void
.end method

.method public onUp()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$2;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #calls: Lcom/miui/gallery/app/AlbumSetPage;->onUp()V
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPage;->access$1500(Lcom/miui/gallery/app/AlbumSetPage;)V

    .line 443
    return-void
.end method
