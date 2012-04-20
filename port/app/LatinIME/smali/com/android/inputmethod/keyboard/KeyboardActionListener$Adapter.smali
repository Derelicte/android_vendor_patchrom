.class public Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onCodeInput(I[III)V
    .locals 0
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 86
    return-void
.end method

.method public onCustomRequest(I)Z
    .locals 1
    .parameter "requestCode"

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onPress(IZ)V
    .locals 0
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 82
    return-void
.end method

.method public onRelease(IZ)V
    .locals 0
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 84
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 88
    return-void
.end method
