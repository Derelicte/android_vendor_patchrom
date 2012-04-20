.class Lcom/miui/gallery/app/AlbumSetPage$6;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumSetPage;->onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage$6;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iput p2, p0, Lcom/miui/gallery/app/AlbumSetPage$6;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 714
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage$6;->val$resultCode:I

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$6;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #setter for: Lcom/miui/gallery/app/AlbumSetPage;->mInitialSynced:Z
    invoke-static {v0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->access$1702(Lcom/miui/gallery/app/AlbumSetPage;Z)Z

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$6;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPage;->access$1800(Lcom/miui/gallery/app/AlbumSetPage;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    :cond_1
    :goto_0
    return-void

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$6;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #calls: Lcom/miui/gallery/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$1900(Lcom/miui/gallery/app/AlbumSetPage;I)V

    .line 719
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage$6;->val$resultCode:I

    if-ne v0, v1, :cond_1

    .line 720
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$6;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0065

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
