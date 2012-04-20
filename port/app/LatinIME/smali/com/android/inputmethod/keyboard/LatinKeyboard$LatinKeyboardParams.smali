.class Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatinKeyboardParams"
.end annotation


# instance fields
.field public mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

.field public mSpaceKey:Lcom/android/inputmethod/keyboard/Key;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    .line 109
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/LatinKeyboard$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 115
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    sparse-switch v0, :sswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 117
    :sswitch_0
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    goto :goto_0

    .line 120
    :sswitch_1
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
