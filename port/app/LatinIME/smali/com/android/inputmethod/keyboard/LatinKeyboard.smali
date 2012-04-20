.class public Lcom/android/inputmethod/keyboard/LatinKeyboard;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/LatinKeyboard$1;,
        Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;,
        Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;
    }
.end annotation


# static fields
.field private static final ATTR_TEXT_SIZE:[I


# instance fields
.field private final mAutoCorrectionSpacebarLedEnabled:Z

.field private final mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

.field private final mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

.field private final mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsSpacebarTriggeringPopupByLongPress:Z

.field private final mRes:Landroid/content/res/Resources;

.field private final mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mSpaceDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private final mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mSpacebarTextColor:I

.field private mSpacebarTextFadeFactor:F

.field private final mSpacebarTextShadowColor:I

.field private final mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 331
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010095

    aput v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->ATTR_TEXT_SIZE:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;)V
    .locals 8
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 80
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 51
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 60
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDrawableCache:Ljava/util/HashMap;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mTheme:Landroid/content/res/Resources$Theme;

    .line 85
    iget-object v2, p2, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    .line 86
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v2, p2, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    .line 89
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090010

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 92
    .local v1, longPressSpaceKeyTimeout:I
    if-lez v1, :cond_2

    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mIsSpacebarTriggeringPopupByLongPress:Z

    .line 94
    sget-object v2, Lcom/android/inputmethod/latin/R$styleable;->LatinKeyboard:[I

    const v6, 0x7f010001

    const v7, 0x7f0e0004

    invoke-virtual {p1, v3, v2, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedEnabled:Z

    .line 98
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    .line 100
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextColor:I

    .line 102
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextShadowColor:I

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    return-void

    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #longPressSpaceKeyTimeout:I
    :cond_0
    move-object v2, v3

    .line 86
    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 89
    goto :goto_1

    .restart local v1       #longPressSpaceKeyTimeout:I
    :cond_2
    move v2, v5

    .line 92
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;Lcom/android/inputmethod/keyboard/LatinKeyboard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboard;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;)V

    return-void
.end method

.method private drawSpacebar(Ljava/util/Locale;ZF)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "inputLocale"
    .parameter "isAutoCorrection"
    .parameter "textFadeFactor"

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move/from16 v19, v0

    .line 264
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 265
    .local v10, height:I
    :goto_0
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 266
    .local v6, buffer:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v7, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 268
    .local v15, res:Landroid/content/res/Resources;
    const/16 v22, 0x0

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 271
    if-eqz p1, :cond_0

    .line 272
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 273
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 276
    const v22, 0x7f0b0001

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "small"

    aput-object v25, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 281
    .local v17, textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    const-string v22, "medium"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 282
    const v18, 0x1030044

    .line 283
    .local v18, textStyle:I
    const/16 v8, 0x12

    .line 289
    .local v8, defaultTextSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mTheme:Landroid/content/res/Resources$Theme;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextSizeFromTheme(Landroid/content/res/Resources$Theme;II)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->layoutSpacebar(Landroid/graphics/Paint;Ljava/util/Locale;IF)Ljava/lang/String;

    move-result-object v13

    .line 295
    .local v13, language:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v9

    .line 296
    .local v9, descent:F
    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    add-float v16, v22, v9

    .line 297
    .local v16, textHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    int-to-float v0, v10

    move/from16 v22, v0

    const v23, 0x3f19999a

    mul-float v5, v22, v23

    .line 299
    .local v5, baseline:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextShadowColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpacebarTextColor(IF)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    div-int/lit8 v22, v19, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, v5, v9

    const/high16 v24, 0x3f80

    sub-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v13, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpacebarTextColor(IF)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    div-int/lit8 v22, v19, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, v5, v9

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v13, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 306
    .end local v5           #baseline:F
    .end local v8           #defaultTextSize:I
    .end local v9           #descent:F
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v16           #textHeight:F
    .end local v17           #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    .end local v18           #textStyle:I
    :cond_0
    if-eqz p2, :cond_5

    .line 307
    mul-int/lit8 v22, v19, 0x50

    div-int/lit8 v12, v22, 0x64

    .line 308
    .local v12, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 309
    .local v11, iconHeight:I
    sub-int v22, v19, v12

    div-int/lit8 v20, v22, 0x2

    .line 310
    .local v20, x:I
    sub-int v21, v10, v11

    .line 311
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v20, v12

    add-int v24, v21, v11

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 321
    .end local v11           #iconHeight:I
    .end local v12           #iconWidth:I
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_1
    :goto_3
    return-object v6

    .line 264
    .end local v6           #buffer:Landroid/graphics/Bitmap;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v10           #height:I
    .end local v15           #res:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    goto/16 :goto_0

    .line 285
    .restart local v6       #buffer:Landroid/graphics/Bitmap;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v10       #height:I
    .restart local v14       #paint:Landroid/graphics/Paint;
    .restart local v15       #res:Landroid/content/res/Resources;
    .restart local v17       #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    :cond_3
    const v18, 0x1030046

    .line 286
    .restart local v18       #textStyle:I
    const/16 v8, 0xe

    .restart local v8       #defaultTextSize:I
    goto/16 :goto_1

    .line 297
    .restart local v9       #descent:F
    .restart local v13       #language:Ljava/lang/String;
    .restart local v16       #textHeight:F
    :cond_4
    div-int/lit8 v22, v10, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v16, v23

    add-float v5, v22, v23

    goto/16 :goto_2

    .line 313
    .end local v8           #defaultTextSize:I
    .end local v9           #descent:F
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v16           #textHeight:F
    .end local v17           #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    .end local v18           #textStyle:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 315
    .restart local v12       #iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 316
    .restart local v11       #iconHeight:I
    sub-int v22, v19, v12

    div-int/lit8 v20, v22, 0x2

    .line 317
    .restart local v20       #x:I
    sub-int v21, v10, v11

    .line 318
    .restart local v21       #y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v20, v12

    add-int v24, v21, v11

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method private getSpaceDrawable(Ljava/util/Locale;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .parameter "locale"
    .parameter "isAutoCorrection"

    .prologue
    .line 249
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 251
    .local v2, hashCode:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 252
    .local v0, cached:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 258
    .end local v0           #cached:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    .line 255
    .restart local v0       #cached:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    iget v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    invoke-direct {p0, p1, p2, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->drawSpacebar(Ljava/util/Locale;ZF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 257
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 258
    goto :goto_0
.end method

.method private static getSpacebarTextColor(IF)I
    .locals 5
    .parameter "color"
    .parameter "fadeFactor"

    .prologue
    .line 151
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 153
    .local v0, newColor:I
    return v0
.end method

.method public static getTextSizeFromTheme(Landroid/content/res/Resources$Theme;II)I
    .locals 4
    .parameter "theme"
    .parameter "style"
    .parameter "defValue"

    .prologue
    const/4 v3, 0x0

    .line 334
    sget-object v2, Lcom/android/inputmethod/keyboard/LatinKeyboard;->ATTR_TEXT_SIZE:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 335
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 336
    .local v1, textSize:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    return v1
.end method

.method private static getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I
    .locals 2
    .parameter "paint"
    .parameter "text"
    .parameter "textSize"
    .parameter "bounds"

    .prologue
    .line 206
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 208
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method private static layoutSpacebar(Landroid/graphics/Paint;Ljava/util/Locale;IF)Ljava/lang/String;
    .locals 10
    .parameter "paint"
    .parameter "locale"
    .parameter "width"
    .parameter "origTextSize"

    .prologue
    const/4 v5, 0x0

    const v9, 0x3f4ccccd

    const/4 v6, 0x1

    const/high16 v8, 0x3f80

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-static {p1, v6}, Lcom/android/inputmethod/latin/Utils;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, language:Ljava/lang/String;
    invoke-static {p0, v1, p3, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v3

    .line 220
    .local v3, textWidth:I
    div-int v7, p2, v3

    int-to-float v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v2, p3, v7

    .line 222
    .local v2, textSize:F
    invoke-static {p0, v1, v2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v3

    .line 224
    div-float v7, v2, p3

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_0

    if-le v3, p2, :cond_4

    :cond_0
    move v4, v6

    .line 228
    .local v4, useMiddleName:Z
    :goto_0
    if-eqz v4, :cond_5

    .line 229
    invoke-static {p1}, Lcom/android/inputmethod/latin/Utils;->getMiddleDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {p0, v1, p3, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v3

    .line 231
    div-int v7, p2, v3

    int-to-float v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v2, p3, v7

    .line 232
    div-float v7, v2, p3

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_1

    if-le v3, p2, :cond_2

    :cond_1
    move v5, v6

    .line 238
    .local v5, useShortName:Z
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 239
    invoke-static {p1}, Lcom/android/inputmethod/latin/Utils;->getShortDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {p0, v1, p3, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v3

    .line 241
    div-int v6, p2, v3

    int-to-float v6, v6

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v2, p3, v6

    .line 243
    :cond_3
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 245
    return-object v1

    .end local v4           #useMiddleName:Z
    .end local v5           #useShortName:Z
    :cond_4
    move v4, v5

    .line 224
    goto :goto_0

    .line 235
    .restart local v4       #useMiddleName:Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #useShortName:Z
    goto :goto_1
.end method

.method private updateSpacebarForLocale(Z)V
    .locals 5
    .parameter "isAutoCorrection"

    .prologue
    const/4 v2, 0x1

    .line 187
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-nez v3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    .line 189
    .local v0, imm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    if-eqz v0, :cond_0

    .line 191
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mIsSpacebarTriggeringPopupByLongPress:Z

    if-eqz v3, :cond_2

    invoke-static {v0, v2}, Lcom/android/inputmethod/latin/Utils;->hasMultipleEnabledIMEsOrSubtypes(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 193
    .local v1, shouldShowInputMethodPicker:Z
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v3, v1}, Lcom/android/inputmethod/keyboard/Key;->setNeedsSpecialPopupHint(Z)V

    .line 195
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v4, v4, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->needsToDisplayLanguage(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, v3, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpaceDrawable(Ljava/util/Locale;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 191
    .end local v1           #shouldShowInputMethodPicker:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 197
    .restart local v1       #shouldShowInputMethodPicker:Z
    :cond_3
    if-eqz p1, :cond_4

    .line 198
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpaceDrawable(Ljava/util/Locale;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 200
    :cond_4
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "label"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 183
    .end local p1
    :cond_0
    return-object p1
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 327
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mOccupiedWidth:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mOccupiedHeight:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/android/inputmethod/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v0

    return-object v0
.end method

.method public needsAutoCorrectionSpacebarLed()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedEnabled:Z

    return v0
.end method

.method public onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;
    .locals 1
    .parameter "isAutoCorrection"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateSpacebarForLocale(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    return-object v0
.end method

.method public setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 1
    .parameter "fadeFactor"
    .parameter "view"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateSpacebarForLocale(Z)V

    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 148
    :cond_0
    return-void
.end method

.method public updateShortcutKey(ZLcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 2
    .parameter "available"
    .parameter "view"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 161
    if-eqz p2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
