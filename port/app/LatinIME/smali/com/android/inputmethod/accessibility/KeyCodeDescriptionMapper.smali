.class public Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;
.super Ljava/lang/Object;
.source "KeyCodeDescriptionMapper.java"


# static fields
.field private static sInstance:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;


# instance fields
.field private final mKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftLockedKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftedKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;-><init>()V

    sput-object v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mShiftedKeyCodeMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mShiftLockedKeyCodeMap:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method private getCorrectKeyCode(Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;)I
    .locals 2
    .parameter "keyboard"
    .parameter "key"

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p2, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    goto :goto_0
.end method

.method private getDescriptionForKeyCode(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "keyboard"
    .parameter "key"
    .parameter "shouldObscure"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    invoke-direct {p0, p2, p3}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getCorrectKeyCode(Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;)I

    move-result v0

    .line 222
    .local v0, code:I
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mShiftLockedKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mShiftLockedKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    :goto_0
    return-object v2

    .line 224
    :cond_0
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mShiftedKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mShiftedKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 230
    .local v1, isDefinedNonCtrl:Z
    :goto_1
    if-eqz p4, :cond_3

    if-eqz v1, :cond_3

    .line 231
    const v2, 0x7f0b00c3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v1           #isDefinedNonCtrl:Z
    :cond_2
    move v1, v3

    .line 229
    goto :goto_1

    .line 234
    .restart local v1       #isDefinedNonCtrl:Z
    :cond_3
    iget-object v4, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 236
    :cond_4
    if-eqz v1, :cond_5

    .line 237
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 239
    :cond_5
    const v4, 0x7f0b00ab

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDescriptionForSwitchAlphaSymbol(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "keyboard"

    .prologue
    const v2, 0x7f0b00b0

    .line 166
    iget-object v0, p2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 168
    .local v0, id:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isSymbolsKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const v1, 0x7f0b00b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isPhoneShiftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const v1, 0x7f0b00b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isPhoneKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 177
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 49
    sget-object v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->initInternal(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 50
    return-void
.end method

.method private initInternal(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "context"
    .parameter "prefs"

    .prologue
    const v4, 0x7f0b00c9

    const/4 v3, -0x1

    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, ":-)"

    const v2, 0x7f0b00b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x2022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x221a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x3c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x394

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x2122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x2105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x2026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x201e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0xff0a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00af

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mShiftedKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mShiftLockedKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b00ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method


# virtual methods
.method public getDescriptionForKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "keyboard"
    .parameter "key"
    .parameter "shouldObscure"

    .prologue
    .line 130
    iget v2, p3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForSwitchAlphaSymbol(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, description:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 152
    .end local v0           #description:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget-object v2, p3, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 137
    iget-object v2, p3, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, label:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p3, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForKeyCode(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 146
    goto :goto_0

    .line 148
    .end local v1           #label:Ljava/lang/String;
    :cond_4
    iget v2, p3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    if-eqz v2, :cond_5

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForKeyCode(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
