.class public Lcom/android/inputmethod/compat/EditorInfoCompatUtils;
.super Ljava/lang/Object;
.source "EditorInfoCompatUtils.java"


# static fields
.field private static final FIELD_IME_ACTION_PREVIOUS:Ljava/lang/reflect/Field;

.field private static final FIELD_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/reflect/Field;

.field private static final FIELD_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/reflect/Field;

.field private static final OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

.field private static final OBJ_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/Integer;

.field private static final OBJ_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    const-string v1, "IME_FLAG_NAVIGATE_NEXT"

    invoke-static {v0, v1}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/reflect/Field;

    .line 27
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    const-string v1, "IME_FLAG_NAVIGATE_PREVIOUS"

    invoke-static {v0, v1}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/reflect/Field;

    .line 29
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    const-string v1, "IME_ACTION_PREVIOUS"

    invoke-static {v0, v1}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_ACTION_PREVIOUS:Ljava/lang/reflect/Field;

    .line 31
    sget-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/Integer;

    .line 33
    sget-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/Integer;

    .line 35
    sget-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_ACTION_PREVIOUS:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFlagNavigateNext(I)Z
    .locals 2
    .parameter "imeOptions"

    .prologue
    const/4 v0, 0x0

    .line 39
    sget-object v1, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasFlagNavigatePrevious(I)Z
    .locals 2
    .parameter "imeOptions"

    .prologue
    const/4 v0, 0x0

    .line 45
    sget-object v1, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static imeOptionsName(I)Ljava/lang/String;
    .locals 4
    .parameter "imeOptions"

    .prologue
    .line 61
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    .line 62
    const/4 v0, 0x0

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    and-int/lit16 v1, p0, 0xff

    .line 65
    .local v1, actionId:I
    packed-switch v1, :pswitch_data_0

    .line 88
    sget-object v2, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 89
    const-string v0, "actionPrevious"

    .line 96
    .local v0, action:Ljava/lang/String;
    :goto_1
    const/high16 v2, 0x4000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flagNoEnterAction|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    .end local v0           #action:Ljava/lang/String;
    :pswitch_0
    const-string v0, "actionUnspecified"

    .line 68
    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 70
    .end local v0           #action:Ljava/lang/String;
    :pswitch_1
    const-string v0, "actionNone"

    .line 71
    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 73
    .end local v0           #action:Ljava/lang/String;
    :pswitch_2
    const-string v0, "actionGo"

    .line 74
    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 76
    .end local v0           #action:Ljava/lang/String;
    :pswitch_3
    const-string v0, "actionSearch"

    .line 77
    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 79
    .end local v0           #action:Ljava/lang/String;
    :pswitch_4
    const-string v0, "actionSend"

    .line 80
    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 82
    .end local v0           #action:Ljava/lang/String;
    :pswitch_5
    const-string v0, "actionNext"

    .line 83
    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 85
    .end local v0           #action:Ljava/lang/String;
    :pswitch_6
    const-string v0, "actionDone"

    .line 86
    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 91
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionUnknown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static performEditorActionNext(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "ic"

    .prologue
    .line 51
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 52
    return-void
.end method

.method public static performEditorActionPrevious(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "ic"

    .prologue
    .line 55
    sget-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0
.end method
