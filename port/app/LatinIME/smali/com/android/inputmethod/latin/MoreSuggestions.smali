.class public Lcom/android/inputmethod/latin/MoreSuggestions;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/MoreSuggestions$1;,
        Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    }
.end annotation


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/MoreSuggestions;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;Lcom/android/inputmethod/latin/MoreSuggestions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/MoreSuggestions;-><init>(Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/inputmethod/latin/MoreSuggestions;->DBG:Z

    return v0
.end method
