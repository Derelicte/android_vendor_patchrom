.class public Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeyPreviewDrawParams"
.end annotation


# instance fields
.field public final mCoordinates:[I

.field private final mKeyLetterRatio:F

.field public mKeyLetterSize:I

.field public final mKeyTextStyle:Landroid/graphics/Typeface;

.field public final mPreviewBackground:Landroid/graphics/drawable/Drawable;

.field public final mPreviewBackgroundHeight:I

.field public final mPreviewBackgroundWidth:I

.field public final mPreviewHeight:I

.field public final mPreviewLeftBackground:Landroid/graphics/drawable/Drawable;

.field public final mPreviewOffset:I

.field public final mPreviewRightBackground:Landroid/graphics/drawable/Drawable;

.field public final mPreviewTextColor:I

.field private final mPreviewTextRatio:F

.field public mPreviewTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;)V
    .locals 3
    .parameter "a"
    .parameter "keyDrawParams"

    .prologue
    const/16 v1, 0xf0

    const/4 v2, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    .line 309
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    .line 310
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewLeftBackground:Landroid/graphics/drawable/Drawable;

    .line 312
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewRightBackground:Landroid/graphics/drawable/Drawable;

    .line 314
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->setAlpha(Landroid/graphics/drawable/Drawable;I)V

    .line 315
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->setAlpha(Landroid/graphics/drawable/Drawable;I)V

    .line 316
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->setAlpha(Landroid/graphics/drawable/Drawable;I)V

    .line 317
    const/16 v0, 0x17

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundWidth:I

    .line 319
    const/16 v0, 0x18

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundHeight:I

    .line 321
    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewOffset:I

    .line 323
    const/16 v0, 0x1b

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewHeight:I

    .line 325
    const/16 v0, 0x1c

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextRatio:F

    .line 326
    const/16 v0, 0x19

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextColor:I

    .line 328
    #getter for: Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F
    invoke-static {p2}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->access$200(Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterRatio:F

    .line 329
    iget-object v0, p2, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 330
    return-void
.end method

.method private static setAlpha(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "drawable"
    .parameter "alpha"

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateKeyHeight(I)V
    .locals 2
    .parameter "keyHeight"

    .prologue
    .line 333
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextSize:I

    .line 334
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterSize:I

    .line 335
    return-void
.end method
