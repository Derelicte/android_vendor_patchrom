.class Lcom/miui/gallery/app/HomePage$7;
.super Ljava/lang/Object;
.source "HomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/HomePage;->onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/HomePage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$7;->this$0:Lcom/miui/gallery/app/HomePage;

    iput p2, p0, Lcom/miui/gallery/app/HomePage$7;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 859
    iget v0, p0, Lcom/miui/gallery/app/HomePage$7;->val$resultCode:I

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$7;->this$0:Lcom/miui/gallery/app/HomePage;

    #setter for: Lcom/miui/gallery/app/HomePage;->mInitialSynced:Z
    invoke-static {v0, v2}, Lcom/miui/gallery/app/HomePage;->access$2202(Lcom/miui/gallery/app/HomePage;Z)Z

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$7;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$2300(Lcom/miui/gallery/app/HomePage;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 868
    :cond_1
    :goto_0
    return-void

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$7;->this$0:Lcom/miui/gallery/app/HomePage;

    #calls: Lcom/miui/gallery/app/HomePage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/HomePage;->access$2400(Lcom/miui/gallery/app/HomePage;I)V

    .line 864
    iget v0, p0, Lcom/miui/gallery/app/HomePage$7;->val$resultCode:I

    if-ne v0, v1, :cond_1

    .line 865
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$7;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v0, v0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0065

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
