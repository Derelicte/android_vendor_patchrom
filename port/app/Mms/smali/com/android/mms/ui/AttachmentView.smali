.class public Lcom/android/mms/ui/AttachmentView;
.super Landroid/widget/FrameLayout;
.source "AttachmentView.java"


# static fields
.field private static EDIT_BUTTONS:[I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPanel:Lcom/android/mms/ui/FloatPanelView;

.field private mPlayIcon:Landroid/widget/ImageView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/AttachmentView;->EDIT_BUTTONS:[I

    return-void

    :array_0
    .array-data 0x4
        0x4at 0x0t 0x10t 0x7ft
        0x30t 0x0t 0x10t 0x7ft
        0x4bt 0x0t 0x10t 0x7ft
        0xd9t 0x0t 0x10t 0x7ft
        0xdat 0x0t 0x10t 0x7ft
        0xdbt 0x0t 0x10t 0x7ft
        0x3t 0x0t 0x10t 0x7ft
        0x4t 0x0t 0x10t 0x7ft
        0x5t 0x0t 0x10t 0x7ft
        0xc7t 0x0t 0x10t 0x7ft
        0xc8t 0x0t 0x10t 0x7ft
        0xc9t 0x0t 0x10t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    new-instance v0, Lcom/android/mms/ui/AttachmentView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentView$3;-><init>(Lcom/android/mms/ui/AttachmentView;)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/AttachmentView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private createVideoThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "uri"

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 261
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 262
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 272
    :goto_0
    return-object v0

    .line 263
    :catch_0
    move-exception v2

    .line 267
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 268
    :catch_1
    move-exception v2

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v2

    .line 267
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 270
    :goto_1
    throw v2

    .line 268
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "playable"

    .prologue
    .line 254
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p2}, Lcom/android/mms/ui/AttachmentView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 255
    return-void
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .parameter "drawable"
    .parameter "playable"

    .prologue
    const/16 v3, 0xaa

    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 238
    .local v0, l:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0xaa

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    :goto_0
    if-eqz p2, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentView;->mPlayIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    :goto_1
    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 243
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentView;->mPlayIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPanelResid(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 143
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/FloatPanelView;

    iput-object v3, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/mms/ui/AttachmentView;->EDIT_BUTTONS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    sget-object v4, Lcom/android/mms/ui/AttachmentView;->EDIT_BUTTONS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 147
    new-instance v3, Lcom/android/mms/ui/AttachmentView$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/AttachmentView$1;-><init>(Lcom/android/mms/ui/AttachmentView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentView;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->dismissPopup()V

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 166
    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const v0, 0x7f100060

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentView;->mPlayIcon:Landroid/widget/ImageView;

    .line 170
    new-instance v0, Lcom/android/mms/ui/AttachmentView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentView$2;-><init>(Lcom/android/mms/ui/AttachmentView;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentView;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public showPopup()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 179
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    if-nez v7, :cond_0

    .line 231
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v7, :cond_1

    .line 183
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x10102c8

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 186
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v8, 0x3ea

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 187
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v12}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 190
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v13}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 196
    :cond_1
    new-array v5, v13, [I

    .line 197
    .local v5, xy:[I
    new-array v1, v13, [I

    .line 198
    .local v1, parentXy:[I
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/AttachmentView;->getLocationOnScreen([I)V

    .line 199
    aget v2, v5, v12

    .line 200
    .local v2, top:I
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .local v3, view:Landroid/view/View;
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_3

    .line 201
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 202
    aget v7, v1, v12

    if-le v7, v2, :cond_2

    .line 203
    aget v2, v1, v12

    .line 200
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3           #view:Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3       #view:Landroid/view/View;
    goto :goto_1

    .line 208
    :cond_3
    aget v7, v5, v12

    iget-object v8, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-lt v2, v7, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->dismissPopup()V

    goto :goto_0

    .line 213
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    invoke-virtual {v7, v11, v11}, Lcom/android/mms/ui/FloatPanelView;->measure(II)V

    .line 214
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    invoke-virtual {v7}, Lcom/android/mms/ui/FloatPanelView;->getMeasuredHeight()I

    move-result v7

    sub-int v6, v2, v7

    .line 215
    .local v6, y:I
    aget v7, v5, v11

    iget-object v8, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v0, v7, v8

    .line 216
    .local v0, center:I
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    invoke-virtual {v7}, Lcom/android/mms/ui/FloatPanelView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v0, v7

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 217
    .local v4, x:I
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    invoke-virtual {v7, v11}, Lcom/android/mms/ui/FloatPanelView;->setArrow(Z)V

    .line 218
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    sub-int v8, v0, v4

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/FloatPanelView;->setArrowPos(I)V

    .line 220
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    if-eq v7, v8, :cond_5

    .line 221
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 226
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_6

    .line 227
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, p0, v11, v11, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/AttachmentView;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 230
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    invoke-virtual {v8}, Lcom/android/mms/ui/FloatPanelView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/ui/AttachmentView;->mPanel:Lcom/android/mms/ui/FloatPanelView;

    invoke-virtual {v9}, Lcom/android/mms/ui/FloatPanelView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, -0x2

    const v7, 0x7f0200b1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v5

    if-nez v5, :cond_1

    .line 88
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 97
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v5

    if-nez v5, :cond_7

    .line 98
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 99
    .local v2, s:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    .line 101
    .local v1, i:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :goto_1
    const v5, 0x7f040017

    invoke-direct {p0, v5}, Lcom/android/mms/ui/AttachmentView;->setPanelResid(I)V

    .line 108
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/mms/ui/AttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v5, v8}, Lcom/android/mms/ui/AttachmentView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 110
    .end local v1           #i:Lcom/android/mms/model/ImageModel;
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v4

    .line 112
    .local v4, v:Lcom/android/mms/model/VideoModel;
    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_2
    const v5, 0x7f040051

    invoke-direct {p0, v5}, Lcom/android/mms/ui/AttachmentView;->setPanelResid(I)V

    .line 119
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/AttachmentView;->createVideoThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 116
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/AttachmentView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    .line 121
    .end local v3           #thumbnail:Landroid/graphics/Bitmap;
    .end local v4           #v:Lcom/android/mms/model/VideoModel;
    :cond_5
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    .line 123
    .local v0, a:Lcom/android/mms/model/AudioModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 124
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :goto_3
    const v5, 0x7f040001

    invoke-direct {p0, v5}, Lcom/android/mms/ui/AttachmentView;->setPanelResid(I)V

    .line 129
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    goto/16 :goto_0

    .line 126
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    const v6, 0x7f020090

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 133
    .end local v0           #a:Lcom/android/mms/model/AudioModel;
    .end local v2           #s:Lcom/android/mms/model/SlideModel;
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mImageView:Landroid/widget/ImageView;

    const v6, 0x7f0200b9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    const v5, 0x7f04004b

    invoke-direct {p0, v5}, Lcom/android/mms/ui/AttachmentView;->setPanelResid(I)V

    .line 135
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentView;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    goto/16 :goto_0
.end method
