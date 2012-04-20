.class public Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
.super Landroid/inputmethodservice/InputMethodService;
.source "InputMethodServiceCompatWrapper.java"


# instance fields
.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field protected mOptionsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    return-void
.end method

.method protected static setTouchableRegionCompat(Landroid/inputmethodservice/InputMethodService$Insets;IIII)V
    .locals 1
    .parameter "outInsets"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 110
    const/4 v0, 0x3

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 111
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Region;->set(IIII)Z

    .line 112
    return-void
.end method


# virtual methods
.method public notifyOnCurrentInputMethodSubtypeChanged(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 0
    .parameter "newSubtype"

    .prologue
    .line 82
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 66
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 67
    return-void
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .parameter "subtype"

    .prologue
    .line 104
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    new-instance v1, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {v1, p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 106
    return-void
.end method

.method public showOptionDialogInternal(Landroid/app/AlertDialog;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 47
    .local v2, windowToken:Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 61
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 50
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 53
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 54
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 55
    const/16 v3, 0x3eb

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 59
    iput-object p1, p0, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
