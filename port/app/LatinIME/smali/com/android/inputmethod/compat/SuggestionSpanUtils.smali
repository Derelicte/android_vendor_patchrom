.class public Lcom/android/inputmethod/compat/SuggestionSpanUtils;
.super Ljava/lang/Object;
.source "SuggestionSpanUtils.java"


# static fields
.field private static final CLASS_SuggestionSpan:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public static final FIELD_FLAG_AUTO_CORRECTION:Ljava/lang/reflect/Field;

.field public static final FIELD_SUGGESTION_MAX_SIZE:Ljava/lang/reflect/Field;

.field private static final INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

.field public static final OBJ_SUGGESTION_MAX_SIZE:Ljava/lang/Integer;

.field public static final SUGGESTION_SPAN_IS_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 36
    const-class v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "android.text.style.SuggestionSpan"

    invoke-static {v0}, Lcom/android/inputmethod/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v3, Ljava/util/Locale;

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-class v4, [Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Class;

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;

    .line 49
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    sget-object v3, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/android/inputmethod/compat/CompatUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    .line 51
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    const-string v3, "FLAG_AUTO_CORRECTION"

    invoke-static {v0, v3}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->FIELD_FLAG_AUTO_CORRECTION:Ljava/lang/reflect/Field;

    .line 53
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    const-string v3, "SUGGESTIONS_MAX_SIZE"

    invoke-static {v0, v3}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->FIELD_SUGGESTION_MAX_SIZE:Ljava/lang/reflect/Field;

    .line 55
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->FIELD_FLAG_AUTO_CORRECTION:Ljava/lang/reflect/Field;

    invoke-static {v5, v5, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

    .line 57
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->FIELD_SUGGESTION_MAX_SIZE:Ljava/lang/reflect/Field;

    invoke-static {v5, v5, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTION_MAX_SIZE:Ljava/lang/Integer;

    .line 61
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->SUGGESTION_SPAN_IS_SUPPORTED:Z

    .line 63
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_2

    .line 64
    sget-boolean v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->SUGGESTION_SPAN_IS_SUPPORTED:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTION_MAX_SIZE:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Field is accidentially null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 61
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTION_MAX_SIZE:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object p1

    .line 77
    :cond_1
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 79
    :goto_1
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-array v3, v4, [Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;

    aput-object v3, v1, v2

    .line 82
    sget-object v2, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    invoke-static {v2, v1}, Lcom/android/inputmethod/compat/CompatUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->TAG:Ljava/lang/String;

    const-string v1, "Suggestion span was not created."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x121

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v0

    .line 89
    goto :goto_0
.end method

.method public static getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Ljava/lang/CharSequence;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Lcom/android/inputmethod/latin/SuggestedWords;->getInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->isObsoleteSuggestedWord()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTION_MAX_SIZE:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object p1

    .line 102
    :cond_1
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 103
    check-cast v0, Landroid/text/Spannable;

    .line 107
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 108
    :goto_2
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-object v5, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTION_MAX_SIZE:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 118
    :cond_2
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v4

    const/4 v4, 0x2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-class v4, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;

    aput-object v4, v1, v3

    .line 121
    sget-object v3, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    invoke-static {v3, v1}, Lcom/android/inputmethod/compat/CompatUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 125
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v0

    .line 126
    goto :goto_0

    .line 105
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {p2, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 113
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 114
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
