.class public Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    new-instance v0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;-><init>(Lcom/android/inputmethod/keyboard/LatinKeyboard$1;)V

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 129
    return-void
.end method


# virtual methods
.method public build()Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .locals 4

    .prologue
    .line 139
    new-instance v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboard;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;Lcom/android/inputmethod/keyboard/LatinKeyboard$1;)V

    return-object v1
.end method

.method public load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    .locals 0
    .parameter "id"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 134
    return-object p0
.end method

.method public bridge synthetic load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;

    move-result-object v0

    return-object v0
.end method
