.class public Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.source "MiniKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MiniKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMoreKeys:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 9
    .parameter "view"
    .parameter "xmlId"
    .parameter "parentKey"
    .parameter "parentKeyboard"

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    invoke-direct {v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 210
    iget-object v0, p4, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardId;->cloneWithNewXml(Ljava/lang/String;I)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v1, p4, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mVerticalGap:I

    .line 215
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget-boolean v1, p4, Lcom/android/inputmethod/keyboard/Keyboard;->mIsRtlKeyboard:Z

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mIsRtlKeyboard:Z

    .line 216
    iget-object v0, p3, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    .line 218
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget v8, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundWidth:I

    .line 219
    .local v8, previewWidth:I
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget v7, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundHeight:I

    .line 223
    .local v7, previewHeight:I
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->isKeyPreviewPopupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-lez v8, :cond_0

    if-lez v7, :cond_0

    .line 225
    move v3, v8

    .line 226
    .local v3, width:I
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mVerticalGap:I

    add-int v4, v7, v0

    .line 231
    .local v4, height:I
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget v2, p3, Lcom/android/inputmethod/keyboard/Key;->mMaxMoreKeysColumn:I

    iget v6, p3, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v5, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v5, v5, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->setParameters(IIIIII)V

    .line 233
    return-void

    .line 228
    .end local v3           #width:I
    .end local v4           #height:I
    :cond_0
    iget-object v1, p3, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    invoke-static {p1, v1, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->getMaxKeyWidth(Lcom/android/inputmethod/keyboard/KeyboardView;[Ljava/lang/CharSequence;I)I

    move-result v3

    .line 229
    .restart local v3       #width:I
    iget v4, p4, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .restart local v4       #height:I
    goto :goto_0
.end method

.method private static getMaxKeyWidth(Lcom/android/inputmethod/keyboard/KeyboardView;[Ljava/lang/CharSequence;I)I
    .locals 12
    .parameter "view"
    .parameter "moreKeys"
    .parameter "minKeyWidth"

    .prologue
    const/4 v11, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    .line 239
    .local v6, padding:I
    const/4 v7, 0x0

    .line 240
    .local v7, paint:Landroid/graphics/Paint;
    move v4, p2

    .line 241
    .local v4, maxWidth:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .line 242
    .local v5, moreKeySpec:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v9, v11, :cond_1

    .line 246
    if-nez v7, :cond_0

    .line 247
    new-instance v7, Landroid/graphics/Paint;

    .end local v7           #paint:Landroid/graphics/Paint;
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 248
    .restart local v7       #paint:Landroid/graphics/Paint;
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 250
    :cond_0
    invoke-virtual {p0, v2, v7}, Lcom/android/inputmethod/keyboard/KeyboardView;->getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v9

    float-to-int v9, v9

    add-int v8, v9, v6

    .line 251
    .local v8, width:I
    if-ge v4, v8, :cond_1

    .line 252
    move v4, v8

    .line 241
    .end local v8           #width:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v5           #moreKeySpec:Ljava/lang/CharSequence;
    :cond_2
    return v4
.end method


# virtual methods
.method public build()Lcom/android/inputmethod/keyboard/MiniKeyboard;
    .locals 10

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v2, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    .line 262
    .local v2, params:Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
    const/4 v8, 0x0

    .local v8, n:I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v8, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, moreKeySpec:Ljava/lang/String;
    iget v1, v2, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    div-int v9, v8, v1

    .line 265
    .local v9, row:I
    new-instance v0, Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v8, v9}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getX(II)I

    move-result v4

    invoke-virtual {v2, v9}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getY(I)I

    move-result v5

    iget v6, v2, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    iget v7, v2, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;IIII)V

    .line 267
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v2, v0, v9}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V

    .line 268
    invoke-virtual {v2, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 262
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 270
    .end local v0           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v3           #moreKeySpec:Ljava/lang/String;
    .end local v9           #row:I
    :cond_0
    new-instance v1, Lcom/android/inputmethod/keyboard/MiniKeyboard;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/android/inputmethod/keyboard/MiniKeyboard;-><init>(Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;Lcom/android/inputmethod/keyboard/MiniKeyboard$1;)V

    return-object v1
.end method
