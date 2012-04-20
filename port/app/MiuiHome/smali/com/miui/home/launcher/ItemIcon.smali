.class public abstract Lcom/miui/home/launcher/ItemIcon;
.super Landroid/widget/FrameLayout;
.source "ItemIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;


# static fields
.field private static final DEFAULT_MAX_MESSAGE_ICON_SIZE:I

.field public static DEFAULT_PRESET_APP_ALPHA:F


# instance fields
.field protected mIcon:Landroid/widget/ImageView;

.field protected mIconContainer:Landroid/widget/FrameLayout;

.field private mIconMargin:I

.field protected mIconTile:Landroid/widget/ImageView;

.field private mIsCompact:Z

.field private mIsEnableTranslateAnimation:Z

.field private mMessage:Landroid/widget/TextView;

.field private mMessageBackground:Ljava/lang/String;

.field private mMessageIconTile:[B

.field private mMessageMargin:I

.field private mShadow:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/miui/home/launcher/Utilities;->getDipPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/ItemIcon;->DEFAULT_MAX_MESSAGE_ICON_SIZE:I

    .line 39
    const/high16 v0, 0x3f00

    sput v0, Lcom/miui/home/launcher/ItemIcon;->DEFAULT_PRESET_APP_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsCompact:Z

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableTranslateAnimation:Z

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setDrawingCacheEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageMargin:I

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMargin:I

    .line 52
    return-void
.end method

.method private createShadowBackground(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "src"

    .prologue
    const/4 v8, 0x0

    .line 81
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 82
    .local v3, result:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .local v1, dest:Landroid/graphics/Canvas;
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 85
    .local v0, blurPaint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 86
    .local v5, shadowSize:F
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v5, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 87
    const/4 v6, 0x0

    invoke-virtual {p3, v0, v6}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 88
    .local v2, mask:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 89
    .local v4, shadowPaint:Landroid/graphics/Paint;
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    const/high16 v6, 0x3f80

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v5, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 92
    iget-object v6, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v2, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    return-object v3
.end method

.method private getRemoteResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "resString"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 124
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->getResourcePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, resId:I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #resId:I
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v3

    goto :goto_0

    .line 127
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getResourcePackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "resource"

    .prologue
    .line 155
    const/4 v0, 0x0

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setMessageIconTile([B)V
    .locals 3
    .parameter "tile"

    .prologue
    const/4 v2, 0x0

    .line 144
    if-eqz p1, :cond_0

    .line 145
    array-length v1, p1

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMessageTextBackground(Ljava/lang/String;)V
    .locals 3
    .parameter "textBg"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->getRemoteResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    const v2, 0x30200bc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMessageIconTile()[B
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageIconTile:[B

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isEmptyMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageTextBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageBackground:Ljava/lang/String;

    return-object v0
.end method

.method public isCompact()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsCompact:Z

    return v0
.end method

.method public isEmptyMessage()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageBackground:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v6, 0x8

    .line 186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-boolean v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIsCompact:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_key_icon_shadow"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getMeasuredWidth()I

    move-result v2

    .line 193
    .local v2, width:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getMeasuredHeight()I

    move-result v0

    .line 194
    .local v0, height:I
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    .local v1, src:Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_1

    if-lez v2, :cond_1

    if-lez v0, :cond_1

    .line 197
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mShadow:Landroid/widget/ImageView;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #src:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4}, Lcom/miui/home/launcher/ItemIcon;->createShadowBackground(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mShadow:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 57
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIcon:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mShadow:Landroid/widget/ImageView;

    .line 62
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 67
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 68
    .local v0, iconWidth:I
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 69
    .local v2, messageWidth:I
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Lcom/miui/home/launcher/ItemIcon;->DEFAULT_MAX_MESSAGE_ICON_SIZE:I

    if-le v2, v3, :cond_0

    .line 71
    sget v2, Lcom/miui/home/launcher/ItemIcon;->DEFAULT_MAX_MESSAGE_ICON_SIZE:I

    .end local v2           #messageWidth:I
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 73
    .restart local v2       #messageWidth:I
    :cond_0
    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageMargin:I

    add-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageMargin:I

    invoke-virtual {v1, v3, v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMargin:I

    int-to-float v4, v0

    const v5, 0x3daaaaab

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 77
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method public setCompactViewMode(Z)V
    .locals 2
    .parameter "isCompact"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsCompact:Z

    .line 229
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableTranslateAnimation(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableTranslateAnimation:Z

    .line 234
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 238
    iget v3, p0, Lcom/miui/home/launcher/ItemIcon;->mLeft:I

    .line 239
    .local v3, l:I
    iget v5, p0, Lcom/miui/home/launcher/ItemIcon;->mTop:I

    .line 240
    .local v5, t:I
    iget v4, p0, Lcom/miui/home/launcher/ItemIcon;->mRight:I

    .line 241
    .local v4, r:I
    iget v1, p0, Lcom/miui/home/launcher/ItemIcon;->mBottom:I

    .line 242
    .local v1, b:I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v2

    .line 243
    .local v2, changed:Z
    iget-boolean v6, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableTranslateAnimation:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 244
    iget v6, p0, Lcom/miui/home/launcher/ItemIcon;->mLeft:I

    if-ne v3, v6, :cond_0

    iget v6, p0, Lcom/miui/home/launcher/ItemIcon;->mTop:I

    if-eq v5, v6, :cond_1

    :cond_0
    sub-int v6, v1, v5

    iget v7, p0, Lcom/miui/home/launcher/ItemIcon;->mBottom:I

    iget v8, p0, Lcom/miui/home/launcher/ItemIcon;->mTop:I

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_1

    sub-int v6, v4, v3

    iget v7, p0, Lcom/miui/home/launcher/ItemIcon;->mRight:I

    iget v8, p0, Lcom/miui/home/launcher/ItemIcon;->mLeft:I

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_1

    .line 245
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/miui/home/launcher/ItemIcon;->mLeft:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/home/launcher/ItemIcon;->mTop:I

    sub-int v7, v5, v7

    int-to-float v7, v7

    invoke-direct {v0, v6, v9, v7, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 246
    .local v0, a:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->startAnimation(Landroid/view/animation/Animation;)V

    .line 250
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    return v2
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 205
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 206
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ItemIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 101
    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .parameter "text"
    .parameter "textBg"
    .parameter "tile"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/ItemIcon;->setMessageTextBackground(Ljava/lang/String;)V

    .line 109
    iput-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageBackground:Ljava/lang/String;

    .line 116
    :goto_0
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/ItemIcon;->setMessageIconTile([B)V

    .line 117
    iput-object p3, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageIconTile:[B

    .line 118
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->setMessageTextBackground(Ljava/lang/String;)V

    .line 114
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageBackground:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method
