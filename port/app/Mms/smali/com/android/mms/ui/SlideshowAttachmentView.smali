.class public Lcom/android/mms/ui/SlideshowAttachmentView;
.super Landroid/widget/LinearLayout;
.source "SlideshowAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 149
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 154
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200af

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 82
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_1
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 89
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "text"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "name"
    .parameter "video"

    .prologue
    .line 104
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 106
    .local v1, mp:Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 107
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->getFrameAt(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 113
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "SlideshowAttachmentView"

    const-string v3, "Unexpected IOException."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v2
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 117
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
