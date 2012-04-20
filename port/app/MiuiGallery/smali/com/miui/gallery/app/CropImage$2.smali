.class Lcom/miui/gallery/app/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/CropImage;->saveBitmapToOutputStream(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/CropImage;

.field final synthetic val$ios:Lcom/miui/gallery/util/InterruptableOutputStream;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/InterruptableOutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage$2;->this$0:Lcom/miui/gallery/app/CropImage;

    iput-object p2, p0, Lcom/miui/gallery/app/CropImage$2;->val$ios:Lcom/miui/gallery/util/InterruptableOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$2;->val$ios:Lcom/miui/gallery/util/InterruptableOutputStream;

    invoke-virtual {v0}, Lcom/miui/gallery/util/InterruptableOutputStream;->interrupt()V

    .line 496
    return-void
.end method
