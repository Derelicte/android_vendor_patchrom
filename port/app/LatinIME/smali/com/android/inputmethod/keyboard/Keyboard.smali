.class public Lcom/android/inputmethod/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# instance fields
.field public final mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

.field public final mId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field public final mIsRtlKeyboard:Z

.field public final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mMaxMiniKeyboardColumn:I

.field public final mMoreKeysTemplate:I

.field public final mMostCommonKeyHeight:I

.field public final mMostCommonKeyWidth:I

.field public final mOccupiedHeight:I

.field public final mOccupiedWidth:I

.field private final mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

.field public final mShiftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftLockKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

.field public final mShiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mThemeId:I

.field public final mTopPadding:I

.field public final mUnshiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mVerticalGap:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 9
    .parameter "params"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    .line 120
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 121
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mThemeId:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mThemeId:I

    .line 122
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    .line 123
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    .line 124
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .line 125
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    .line 126
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIsRtlKeyboard:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mIsRtlKeyboard:Z

    .line 127
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMoreKeysTemplate:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    .line 128
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMiniKeyboardColumn:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMaxMiniKeyboardColumn:I

    .line 130
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mTopPadding:I

    .line 131
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    .line 133
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 134
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:Ljava/util/List;

    .line 135
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftLockKeys:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    .line 136
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftedIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    .line 137
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mUnshiftedIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    .line 138
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 140
    new-instance v0, Lcom/android/inputmethod/keyboard/ProximityInfo;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_WIDTH:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_HEIGHT:I

    iget v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    iget v4, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    iget v6, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    iget-object v8, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

    invoke-direct/range {v0 .. v8}, Lcom/android/inputmethod/keyboard/ProximityInfo;-><init>(IIIIIILjava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    .line 143
    return-void
.end method

.method public static themeName(I)Ljava/lang/String;
    .locals 1
    .parameter "themeId"

    .prologue
    .line 246
    packed-switch p0, :pswitch_data_0

    .line 253
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 247
    :pswitch_1
    const-string v0, "Basic"

    goto :goto_0

    .line 248
    :pswitch_2
    const-string v0, "BasicHighContrast"

    goto :goto_0

    .line 249
    :pswitch_3
    const-string v0, "IceCreamSandwich"

    goto :goto_0

    .line 250
    :pswitch_4
    const-string v0, "Stone"

    goto :goto_0

    .line 251
    :pswitch_5
    const-string v0, "StoneBold"

    goto :goto_0

    .line 252
    :pswitch_6
    const-string v0, "GingerBread"

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "label"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

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

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 230
    .end local p1
    :cond_0
    return-object p1
.end method

.method public getNearestKeys(II)[I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/ProximityInfo;->getNearestKeys(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    return-object v0
.end method

.method public hasShiftLockKey()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphaKeyboard()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v0

    return v0
.end method

.method public isAutomaticTemporaryUpperCase()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isAutomaticTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualTemporaryUpperCase()Z
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualTemporaryUpperCaseFromAuto()Z
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberKeyboard()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isNumberKeyboard()Z

    move-result v0

    return v0
.end method

.method public isPhoneKeyboard()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isPhoneKeyboard()Z

    move-result v0

    return v0
.end method

.method public isShiftLockShifted()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftLockShifted()Z

    move-result v0

    return v0
.end method

.method public isShiftLocked()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftLocked()Z

    move-result v0

    return v0
.end method

.method public isShiftedOrShiftLocked()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftedOrShiftLocked()Z

    move-result v0

    return v0
.end method

.method public setAutomaticTemporaryUpperCase()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    .line 194
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->setAutomaticTemporaryUpperCase()V

    .line 195
    return-void
.end method

.method public setShiftLocked(Z)Z
    .locals 3
    .parameter "newShiftLockState"

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    .line 157
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/Key;->setHighlightOn(Z)V

    .line 159
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    .end local v1           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->setShiftLocked(Z)V

    .line 166
    const/4 v2, 0x1

    return v2
.end method

.method public setShifted(Z)Z
    .locals 3
    .parameter "newShiftState"

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    .line 179
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftLocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 181
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftedOrShiftLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 185
    .end local v1           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->setShifted(Z)Z

    move-result v2

    return v2
.end method
