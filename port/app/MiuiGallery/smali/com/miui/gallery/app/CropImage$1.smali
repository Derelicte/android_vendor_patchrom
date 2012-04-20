.class Lcom/miui/gallery/app/CropImage$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/CropImage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/gallery/app/CropImage;->access$000(Lcom/miui/gallery/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 175
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    #calls: Lcom/miui/gallery/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    invoke-static {v1, v0}, Lcom/miui/gallery/app/CropImage;->access$100(Lcom/miui/gallery/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/gallery/app/CropImage;->access$000(Lcom/miui/gallery/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 180
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/miui/gallery/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/miui/gallery/app/CropImage;->access$200(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/gallery/app/CropImage;->access$000(Lcom/miui/gallery/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/CropImage;->setResult(I)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-virtual {v0}, Lcom/miui/gallery/app/CropImage;->finish()V

    .line 192
    :pswitch_3
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/gallery/app/CropImage;->access$000(Lcom/miui/gallery/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$1;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-virtual {v0}, Lcom/miui/gallery/app/CropImage;->finish()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
