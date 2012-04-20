.class Lcom/miui/gallery/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/miui/gallery/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 247
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 14
    .parameter "jc"

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x0

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 251
    .local v0, cropRect:Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-virtual {v9}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 253
    .local v3, extra:Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    .local v5, rect:Landroid/graphics/Rect;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v6, result:Landroid/content/Intent;
    const-string v9, "cropped-rect"

    invoke-virtual {v6, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, cropped:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 261
    .local v4, outputted:Z
    if-eqz v3, :cond_8

    .line 262
    const-string v9, "output"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 263
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 264
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v8

    .line 288
    .end local v6           #result:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v6

    .line 265
    .restart local v6       #result:Landroid/content/Intent;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x1

    .line 266
    iget-object v9, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v5}, Lcom/miui/gallery/app/CropImage;->access$300(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 267
    iget-object v9, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->saveBitmapToUri(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v9, p1, v1, v7}, Lcom/miui/gallery/app/CropImage;->access$400(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v6, v8

    goto :goto_0

    .line 269
    :cond_2
    const-string v9, "return-data"

    invoke-virtual {v3, v9, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 270
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v6, v8

    goto :goto_0

    .line 271
    :cond_3
    const/4 v4, 0x1

    .line 272
    if-nez v1, :cond_4

    iget-object v9, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v5}, Lcom/miui/gallery/app/CropImage;->access$300(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 273
    :cond_4
    const-string v9, "data"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    :cond_5
    const-string v9, "set-as-wallpaper"

    invoke-virtual {v3, v9, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 276
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v6, v8

    goto :goto_0

    .line 277
    :cond_6
    const/4 v4, 0x1

    .line 278
    if-nez v1, :cond_7

    iget-object v9, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v5}, Lcom/miui/gallery/app/CropImage;->access$300(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 279
    :cond_7
    iget-object v9, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->setAsWallpaper(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v9, p1, v1}, Lcom/miui/gallery/app/CropImage;->access$500(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_8

    move-object v6, v8

    goto :goto_0

    .line 282
    .end local v7           #uri:Landroid/net/Uri;
    :cond_8
    if-nez v4, :cond_0

    .line 283
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v6, v8

    goto :goto_0

    .line 284
    :cond_9
    if-nez v1, :cond_a

    iget-object v8, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, v5}, Lcom/miui/gallery/app/CropImage;->access$300(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    :cond_a
    iget-object v8, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->saveToMediaProvider(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v8, p1, v1}, Lcom/miui/gallery/app/CropImage;->access$600(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 286
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/CropImage$SaveOutput;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
