.class public Lcom/android/inputmethod/compat/InputTypeCompatUtils;
.super Ljava/lang/Object;
.source "InputTypeCompatUtils.java"


# static fields
.field private static final FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field;

.field private static final FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field;

.field private static final FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field;

.field private static final NUMBER_PASSWORD_INPUT_TYPE:I

.field private static final OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

.field private static final OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

.field private static final OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

.field private static final WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

.field private static final WEB_TEXT_PASSWORD_INPUT_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 24
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    invoke-static {v0, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field;

    .line 26
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_TEXT_VARIATION_WEB_PASSWORD"

    invoke-static {v0, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field;

    .line 28
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_NUMBER_VARIATION_PASSWORD"

    invoke-static {v0, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field;

    .line 30
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field;

    invoke-static {v3, v3, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    .line 33
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field;

    invoke-static {v3, v3, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    .line 36
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field;

    invoke-static {v3, v3, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    .line 48
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    .line 52
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    :goto_1
    sput v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    .line 57
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v1, v0, 0x2

    :cond_0
    sput v1, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    .line 61
    return-void

    :cond_1
    move v0, v1

    .line 48
    goto :goto_0

    :cond_2
    move v0, v1

    .line 52
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmailVariation(I)Z
    .locals 1
    .parameter "variation"

    .prologue
    .line 93
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebEmailAddressVariation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNumberPasswordInputType(I)Z
    .locals 1
    .parameter "inputType"

    .prologue
    .line 79
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 106
    and-int/lit16 v0, p0, 0xfff

    .line 108
    .local v0, maskedInputType:I
    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isTextPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isNumberPasswordInputType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTextPasswordInputType(I)Z
    .locals 1
    .parameter "inputType"

    .prologue
    .line 84
    const/16 v0, 0x81

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisiblePasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 114
    and-int/lit16 v0, p0, 0xfff

    .line 116
    .local v0, maskedInputType:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isWebEditTextInputType(I)Z
    .locals 1
    .parameter "inputType"

    .prologue
    .line 64
    const/16 v0, 0xa1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWebEmailAddressInputType(I)Z
    .locals 1
    .parameter "inputType"

    .prologue
    .line 74
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWebEmailAddressVariation(I)Z
    .locals 1
    .parameter "variation"

    .prologue
    .line 88
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWebInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 98
    and-int/lit16 v0, p0, 0xfff

    .line 100
    .local v0, maskedInputType:I
    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebEditTextInputType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebEmailAddressInputType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isWebPasswordInputType(I)Z
    .locals 1
    .parameter "inputType"

    .prologue
    .line 69
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
