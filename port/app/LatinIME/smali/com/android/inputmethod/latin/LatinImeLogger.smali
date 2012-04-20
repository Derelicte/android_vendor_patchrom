.class public Lcom/android/inputmethod/latin/LatinImeLogger;
.super Ljava/lang/Object;
.source "LatinImeLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static sDBG:Z

.field public static sVISUALDEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    .line 30
    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 37
    return-void
.end method

.method public static logOnAutoCorrection(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "before"
    .parameter "after"
    .parameter "separatorCode"

    .prologue
    .line 50
    return-void
.end method

.method public static logOnAutoCorrectionCancelled()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public static logOnDelete()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public static logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "metaData"
    .parameter "e"

    .prologue
    .line 65
    return-void
.end method

.method public static logOnInputChar()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public static logOnInputSeparator()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public static logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .parameter "before"
    .parameter "after"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-void
.end method

.method public static onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V
    .locals 0
    .parameter "word"
    .parameter "typeId"
    .parameter "dataType"

    .prologue
    .line 74
    return-void
.end method

.method public static onDestroy()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public static onPrintAllUsabilityStudyLogs()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public static onSetKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 0
    .parameter "kb"

    .prologue
    .line 77
    return-void
.end method

.method public static onStartSuggestion(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "previousWords"

    .prologue
    .line 71
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 34
    return-void
.end method
