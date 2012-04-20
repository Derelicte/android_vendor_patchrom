.class Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;
.super Ljava/lang/Object;
.source "AlbumSearchResultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnBitmapSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, group:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 272
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v4, v4, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v4, v4, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 274
    .local v2, sbm:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 278
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_1

    .line 280
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v7, v7, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->notifyDownload()V

    .line 285
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->finish()V

    .line 304
    :goto_1
    return-void

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const-string v6, ""

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const v8, 0x7f080067

    invoke-virtual {v7, v8}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 290
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v4, v4, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 291
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v4, v4, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;

    invoke-direct {v5, p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 300
    new-instance v4, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;

    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {v4, v5}, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v5, v5, Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {v6, v7}, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    invoke-static {v3, v4, v5, v6}, Lcom/miui/player/ui/AlbumSearchResultActivity;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;Landroid/os/Handler;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;)Z

    goto :goto_1
.end method
