.class public Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;
.super Ljava/lang/Object;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field private mCurrentX:F

.field private final mCurrentY:I

.field public final mDefaultKeyWidth:F

.field private final mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

.field public final mRowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .parameter "res"
    .parameter "params"
    .parameter "parser"
    .parameter "y"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    .line 165
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 167
    .local v1, keyboardAttr:Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    iget v3, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    iget v4, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultRowHeight:I

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    .line 169
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    .local v0, keyAttr:Landroid/content/res/TypedArray;
    const/16 v2, 0x10

    iget v3, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    iget v4, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultKeyWidth:I

    int-to-float v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mDefaultKeyWidth:F

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    iput p4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentY:I

    .line 177
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    .line 178
    return-void
.end method


# virtual methods
.method public advanceXPos(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 185
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    .line 186
    return-void
.end method

.method public getKeyWidth(Landroid/content/res/TypedArray;F)F
    .locals 5
    .parameter "keyAttr"
    .parameter "keyXPos"

    .prologue
    const/16 v4, 0x10

    .line 220
    const/4 v2, 0x0

    invoke-static {p1, v4, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getEnumValue(Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 222
    .local v1, widthType:I
    packed-switch v1, :pswitch_data_0

    .line 234
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mDefaultKeyWidth:F

    invoke-static {p1, v4, v2, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v2

    :goto_0
    return v2

    .line 225
    :pswitch_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v3, v3, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    sub-int v0, v2, v3

    .line 232
    .local v0, keyboardRightEdge:I
    int-to-float v2, v0

    sub-float/2addr v2, p2

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyX(Landroid/content/res/TypedArray;)F
    .locals 7
    .parameter "keyAttr"

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 193
    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getEnumValue(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 195
    .local v2, widthType:I
    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 198
    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    .line 216
    :goto_0
    return v3

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v3, v3, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v4, v4, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    sub-int v1, v3, v4

    .line 202
    .local v1, keyboardRightEdge:I
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v3, v3, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    invoke-static {p1, v6, v3, v5}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v0

    .line 205
    .local v0, keyXPos:F
    cmpg-float v3, v0, v5

    if-gez v3, :cond_1

    .line 211
    int-to-float v3, v1

    add-float/2addr v3, v0

    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_0

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v3, v3, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    goto :goto_0

    .line 216
    .end local v0           #keyXPos:F
    :cond_2
    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    goto :goto_0
.end method

.method public getKeyY()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentY:I

    return v0
.end method

.method public setXPos(F)V
    .locals 0
    .parameter "keyXPos"

    .prologue
    .line 181
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    .line 182
    return-void
.end method
