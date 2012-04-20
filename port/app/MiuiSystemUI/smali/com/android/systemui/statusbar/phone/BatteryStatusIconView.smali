.class public Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;
.super Landroid/widget/ImageView;
.source "BatteryStatusIconView.java"


# static fields
.field private static mBatteryStyle:I

.field static sIconUnit:I


# instance fields
.field private mAnimation:Landroid/graphics/drawable/LevelListDrawable;

.field private mAnimationAlternative:Landroid/graphics/drawable/LevelListDrawable;

.field private mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

.field protected mDisabled:Z

.field private mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicIconAlternative:Landroid/graphics/drawable/LevelListDrawable;

.field protected mHideForAlternative:Z

.field private mIconId:I

.field private mIconLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x26

    sput v0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mHideForAlternative:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mDisabled:Z

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->updateBatterySettings()V

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->updateBatterySettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mIconId:I

    return v0
.end method

.method private extractDrawable(I)Ljava/util/ArrayList;
    .locals 16
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v14, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 170
    .local v13, res:Landroid/content/res/Resources;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    .local v1, bm:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-object v14

    .line 175
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v4, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    div-int v15, v3, v4

    .line 176
    .local v15, rowCount:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget v4, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    div-int v9, v3, v4

    .line 177
    .local v9, columnCount:I
    sget v3, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    sget v4, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    mul-int/2addr v3, v4

    new-array v2, v3, [I

    .line 178
    .local v2, pixels:[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v15, :cond_2

    .line 179
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    if-ge v12, v9, :cond_1

    .line 180
    const/4 v3, 0x0

    sget v4, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    sget v5, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    mul-int/2addr v5, v12

    sget v6, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    mul-int/2addr v6, v10

    sget v7, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    sget v8, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 181
    const/4 v3, 0x0

    sget v4, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    sget v5, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    sget v6, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->sIconUnit:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 182
    .local v11, icon:Landroid/graphics/Bitmap;
    const/16 v3, 0xf0

    invoke-virtual {v11, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 183
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v13, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 178
    .end local v11           #icon:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 186
    .end local v12           #j:I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private generateAnimation(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 11
    .parameter "resId"

    .prologue
    .line 141
    new-instance v7, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 143
    .local v7, result:Landroid/graphics/drawable/LevelListDrawable;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->extractDrawable(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 144
    .local v3, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 145
    .local v1, count:I
    if-lez v1, :cond_1

    .line 147
    const v8, 0x3ecccccd

    .line 148
    .local v8, sum:F
    const/high16 v9, 0x42c8

    int-to-float v10, v1

    div-float v2, v9, v10

    .line 149
    .local v2, delta:F
    const/16 v9, 0x1388

    div-int v4, v9, v1

    .line 150
    .local v4, duration:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 151
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 152
    .local v0, animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    add-int/lit16 v10, v4, 0x1f4

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 153
    add-int/lit8 v6, v5, 0x1

    .local v6, j:I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 154
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 156
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 157
    float-to-int v9, v8

    add-float v10, v8, v2

    float-to-int v10, v10

    invoke-virtual {v7, v9, v10, v0}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 158
    add-float/2addr v8, v2

    .line 150
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    .end local v0           #animation:Landroid/graphics/drawable/AnimationDrawable;
    .end local v2           #delta:F
    .end local v4           #duration:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v8           #sum:F
    :cond_1
    return-object v7
.end method

.method private generateIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 9
    .parameter "resId"

    .prologue
    .line 123
    new-instance v4, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 125
    .local v4, result:Landroid/graphics/drawable/LevelListDrawable;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->extractDrawable(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 126
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 127
    .local v0, count:I
    if-lez v0, :cond_0

    .line 129
    const v5, 0x3ecccccd

    .line 130
    .local v5, sum:F
    const/high16 v6, 0x42c8

    int-to-float v7, v0

    div-float v1, v6, v7

    .line 131
    .local v1, delta:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 132
    float-to-int v7, v5

    add-float v6, v5, v1

    float-to-int v8, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7, v8, v6}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 133
    add-float/2addr v5, v1

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v1           #delta:F
    .end local v3           #i:I
    .end local v5           #sum:F
    :cond_0
    return-object v4
.end method

.method private final updateBatterySettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mBatteryStyle:I

    .line 197
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 198
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mAnimation:Landroid/graphics/drawable/LevelListDrawable;

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView$2;-><init>(Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public disable(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mDisabled:Z

    if-ne v0, p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mDisabled:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->updateVisibility()V

    goto :goto_0
.end method

.method protected getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 93
    if-eqz p1, :cond_0

    sget v1, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mBatteryStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 106
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    if-nez v0, :cond_2

    .line 107
    sget v0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mBatteryStyle:I

    if-nez v0, :cond_5

    const v0, 0x7f060001

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->generateIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 111
    sget v0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mBatteryStyle:I

    if-nez v0, :cond_6

    const v0, 0x7f060002

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->generateIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mGraphicIconAlternative:Landroid/graphics/drawable/LevelListDrawable;

    .line 116
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/AlternativeIcons;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mGraphicIconAlternative:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    .line 99
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mAnimation:Landroid/graphics/drawable/LevelListDrawable;

    if-nez v0, :cond_3

    .line 100
    const v0, 0x7f060003

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->generateAnimation(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mAnimation:Landroid/graphics/drawable/LevelListDrawable;

    .line 101
    const v0, 0x7f060004

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->generateAnimation(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mAnimationAlternative:Landroid/graphics/drawable/LevelListDrawable;

    .line 103
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/AlternativeIcons;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mAnimationAlternative:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mAnimation:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    .line 107
    :cond_5
    const v0, 0x7f060005

    goto :goto_1

    .line 111
    :cond_6
    const v0, 0x7f060006

    goto :goto_2

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020083 -> :sswitch_0
        0x7f02008c -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    return-void
.end method

.method public setImageLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mIconLevel:I

    .line 79
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 80
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mIconId:I

    .line 85
    const/4 v1, -0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 86
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mIconId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mHideForAlternative:Z

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mIconLevel:I

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 90
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAlternative()V
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->setImageResource(I)V

    .line 211
    return-void
.end method

.method protected updateVisibility()V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->mHideForAlternative:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryStatusIconView;->setVisibility(I)V

    .line 221
    return-void

    .line 220
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
