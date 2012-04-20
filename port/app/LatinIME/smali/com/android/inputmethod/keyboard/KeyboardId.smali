.class public Lcom/android/inputmethod/keyboard/KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardId.java"


# instance fields
.field public final mAttribute:Landroid/view/inputmethod/EditorInfo;

.field public final mClobberSettingsKey:Z

.field public final mF2KeyMode:I

.field public final mHasSettingsKey:Z

.field public final mHasShortcutKey:Z

.field private final mHashCode:I

.field public final mImeAction:I

.field public final mLocale:Ljava/util/Locale;

.field public final mMode:I

.field public final mNavigateAction:Z

.field public final mOrientation:I

.field public final mPasswordInput:Z

.field public final mShortcutKeyEnabled:Z

.field public final mWidth:I

.field public final mXmlId:I

.field public final mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZIZZZ)V
    .locals 6
    .parameter "xmlName"
    .parameter "xmlId"
    .parameter "locale"
    .parameter "orientation"
    .parameter "width"
    .parameter "mode"
    .parameter "attribute"
    .parameter "hasSettingsKey"
    .parameter "f2KeyMode"
    .parameter "clobberSettingsKey"
    .parameter "shortcutKeyEnabled"
    .parameter "hasShortcutKey"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p7, :cond_1

    iget v2, p7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 69
    .local v2, inputType:I
    :goto_0
    if-eqz p7, :cond_2

    iget v1, p7, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 70
    .local v1, imeOptions:I
    :goto_1
    iput-object p3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    .line 71
    iput p4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    .line 72
    iput p5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    .line 73
    iput p6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 74
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    .line 76
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebInputType(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    .line 79
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    .line 81
    iput-boolean p8, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    .line 82
    iput p9, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    .line 83
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    .line 84
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    .line 85
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    .line 88
    const v3, 0x400000ff

    and-int/2addr v3, v1

    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    .line 91
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlName:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 94
    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    iget v5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHashCode:I

    .line 109
    return-void

    .line 68
    .end local v1           #imeOptions:I
    .end local v2           #inputType:I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 69
    .restart local v2       #inputType:I
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 79
    .restart local v1       #imeOptions:I
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 146
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f2KeyModeName(I)Ljava/lang/String;
    .locals 1
    .parameter "f2KeyMode"

    .prologue
    .line 197
    packed-switch p0, :pswitch_data_0

    .line 202
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v0, "settings"

    goto :goto_0

    .line 200
    :pswitch_2
    const-string v0, "shortcutIme"

    goto :goto_0

    .line 201
    :pswitch_3
    const-string v0, "shortcutImeOrSettings"

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static modeName(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 185
    packed-switch p0, :pswitch_data_0

    .line 192
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 186
    :pswitch_0
    const-string v0, "text"

    goto :goto_0

    .line 187
    :pswitch_1
    const-string v0, "url"

    goto :goto_0

    .line 188
    :pswitch_2
    const-string v0, "email"

    goto :goto_0

    .line 189
    :pswitch_3
    const-string v0, "im"

    goto :goto_0

    .line 190
    :pswitch_4
    const-string v0, "phone"

    goto :goto_0

    .line 191
    :pswitch_5
    const-string v0, "number"

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public cloneWithNewXml(Ljava/lang/String;I)Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 13
    .parameter "xmlName"
    .parameter "xmlId"

    .prologue
    const/4 v8, 0x0

    .line 112
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget v4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    iget v6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    move-object v1, p1

    move v2, p2

    move v9, v8

    move v10, v8

    move v11, v8

    move v12, v8

    invoke-direct/range {v0 .. v12}, Lcom/android/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZIZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 142
    instance-of v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/inputmethod/keyboard/KeyboardId;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXmlId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHashCode:I

    return v0
.end method

.method public isAlphabetKeyboard()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050009

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberKeyboard()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneKeyboard()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneShiftKeyboard()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050008

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolsKeyboard()Z
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050023

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050026

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 168
    const-string v1, "[%s.xml %s %s%d %s %s %s%s%s%s%s%s%s]"

    const/16 v0, 0xd

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlName:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    aput-object v0, v2, v4

    const/4 v3, 0x2

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v0, v4, :cond_0

    const-string v0, "port"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    invoke-static {v3}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->imeOptionsName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->f2KeyModeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-eqz v0, :cond_1

    const-string v0, " clobberSettingsKey"

    :goto_1
    aput-object v0, v2, v3

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    if-eqz v0, :cond_2

    const-string v0, " navigateAction"

    :goto_2
    aput-object v0, v2, v3

    const/16 v3, 0x9

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-eqz v0, :cond_3

    const-string v0, " passwordInput"

    :goto_3
    aput-object v0, v2, v3

    const/16 v3, 0xa

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    if-eqz v0, :cond_4

    const-string v0, " hasSettingsKey"

    :goto_4
    aput-object v0, v2, v3

    const/16 v3, 0xb

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    if-eqz v0, :cond_5

    const-string v0, " shortcutKeyEnabled"

    :goto_5
    aput-object v0, v2, v3

    const/16 v3, 0xc

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    if-eqz v0, :cond_6

    const-string v0, " hasShortcutKey"

    :goto_6
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "land"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    :cond_5
    const-string v0, ""

    goto :goto_5

    :cond_6
    const-string v0, ""

    goto :goto_6
.end method
