.class Lcom/android/inputmethod/latin/Settings$5;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Settings;->showKeypressVibrationDurationSettingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Settings;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$5;->this$0:Lcom/android/inputmethod/latin/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 686
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 687
    return-void
.end method
