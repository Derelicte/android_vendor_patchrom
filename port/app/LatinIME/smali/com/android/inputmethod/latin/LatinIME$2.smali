.class Lcom/android/inputmethod/latin/LatinIME$2;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->showSubtypeSelectorAndSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "di"
    .parameter "position"

    .prologue
    .line 2327
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2328
    packed-switch p2, :pswitch_data_0

    .line 2340
    :goto_0
    return-void

    .line 2330
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mInputMethodId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$800(Lcom/android/inputmethod/latin/LatinIME;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x1420

    invoke-static {v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getInputLanguageSelectionIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2334
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2337
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_0

    .line 2328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
