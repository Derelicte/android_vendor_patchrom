.class Lcom/android/inputmethod/latin/SuggestionsView$1;
.super Ljava/lang/Object;
.source "SuggestionsView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/SuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/SuggestionsView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    invoke-static {v0}, Lcom/android/inputmethod/latin/SuggestionsView;->access$600(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dimEntireKeyboard(Z)V

    .line 531
    return-void
.end method
