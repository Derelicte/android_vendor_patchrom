.class Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyDrawParams"
.end annotation


# instance fields
.field public final mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public final mKeyHintLabelColor:I

.field private final mKeyHintLabelRatio:F

.field public mKeyHintLabelSize:I

.field public final mKeyHintLetterColor:I

.field public final mKeyHintLetterPadding:F

.field private final mKeyHintLetterRatio:F

.field public mKeyHintLetterSize:I

.field public final mKeyLabelHorizontalPadding:F

.field private final mKeyLabelRatio:F

.field public mKeyLabelSize:I

.field private final mKeyLargeLetterRatio:F

.field public mKeyLargeLetterSize:I

.field private final mKeyLetterRatio:F

.field public mKeyLetterSize:I

.field public final mKeyPopupHintLetterPadding:F

.field public final mKeyTextColor:I

.field public final mKeyTextInactivatedColor:I

.field public final mKeyTextStyle:Landroid/graphics/Typeface;

.field public final mKeyUppercaseLetterActivatedColor:I

.field public final mKeyUppercaseLetterInactivatedColor:I

.field public final mKeyUppercaseLetterPadding:F

.field private final mKeyUppercaseLetterRatio:F

.field public mKeyUppercaseLetterSize:I

.field public final mPadding:Landroid/graphics/Rect;

.field public final mShadowColor:I

.field public final mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x100

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    .line 232
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 233
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    .line 235
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    .line 239
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    .line 241
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    .line 245
    :goto_1
    const/4 v0, 0x4

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterRatio:F

    .line 246
    const/4 v0, 0x6

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterRatio:F

    .line 247
    const/16 v0, 0x8

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterRatio:F

    .line 249
    const/4 v0, 0x7

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelRatio:F

    .line 250
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    .line 252
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    .line 254
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyPopupHintLetterPadding:F

    .line 256
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterPadding:F

    .line 258
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    .line 259
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextInactivatedColor:I

    .line 261
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterColor:I

    .line 262
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:I

    .line 263
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterInactivatedColor:I

    .line 265
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterActivatedColor:I

    .line 267
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 269
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowColor:I

    .line 270
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowRadius:F

    .line 272
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 273
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x3

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    goto/16 :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x5

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    goto/16 :goto_1
.end method

.method static synthetic access$200(Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 198
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    return v0
.end method


# virtual methods
.method public updateKeyHeight(I)V
    .locals 3
    .parameter "keyHeight"

    .prologue
    const/4 v2, 0x0

    .line 276
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 277
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    .line 278
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 279
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    .line 280
    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterSize:I

    .line 281
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterSize:I

    .line 282
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterSize:I

    .line 283
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    .line 284
    return-void
.end method
