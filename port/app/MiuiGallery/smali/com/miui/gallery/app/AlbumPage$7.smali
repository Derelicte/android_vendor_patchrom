.class Lcom/miui/gallery/app/AlbumPage$7;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumPage;->onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPage$7;->this$0:Lcom/miui/gallery/app/AlbumPage;

    iput p2, p0, Lcom/miui/gallery/app/AlbumPage$7;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 635
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage$7;->val$resultCode:I

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$7;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #setter for: Lcom/miui/gallery/app/AlbumPage;->mInitialSynced:Z
    invoke-static {v0, v2}, Lcom/miui/gallery/app/AlbumPage;->access$1302(Lcom/miui/gallery/app/AlbumPage;Z)Z

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$7;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPage;->access$1400(Lcom/miui/gallery/app/AlbumPage;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 644
    :cond_1
    :goto_0
    return-void

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$7;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #calls: Lcom/miui/gallery/app/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumPage;->access$1500(Lcom/miui/gallery/app/AlbumPage;I)V

    .line 640
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage$7;->val$resultCode:I

    if-ne v0, v1, :cond_1

    .line 641
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$7;->this$0:Lcom/miui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0064

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
