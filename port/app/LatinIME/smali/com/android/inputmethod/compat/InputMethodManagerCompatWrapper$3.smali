.class Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field final synthetic val$imiList:Ljava/util/List;

.field final synthetic val$myImsCount:I

.field final synthetic val$myImsList:Ljava/util/List;

.field final synthetic val$service:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;ILjava/util/List;Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;Ljava/util/List;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    iput p2, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$myImsCount:I

    iput-object p3, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$myImsList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$service:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    iput-object p5, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$imiList:Ljava/util/List;

    iput-object p6, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "di"
    .parameter "which"

    .prologue
    .line 300
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 301
    iget v4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$myImsCount:I

    if-ge p2, v4, :cond_0

    .line 302
    move v3, p2

    .line 303
    .local v3, imsIndex:I
    iget-object v4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$myImsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 304
    .local v2, ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    iget-object v4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$service:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    invoke-virtual {v4, v2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->notifyOnCurrentInputMethodSubtypeChanged(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 310
    .end local v2           #ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .end local v3           #imsIndex:I
    :goto_0
    return-void

    .line 306
    :cond_0
    iget v4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$myImsCount:I

    sub-int v1, p2, v4

    .line 307
    .local v1, imiIndex:I
    iget-object v4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$imiList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 308
    .local v0, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    iget-object v4, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    iget-object v5, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$3;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_0
.end method
