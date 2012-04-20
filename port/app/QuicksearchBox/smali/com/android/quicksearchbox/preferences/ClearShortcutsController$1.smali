.class Lcom/android/quicksearchbox/preferences/ClearShortcutsController$1;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->handlePreference(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/preferences/ClearShortcutsController;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/preferences/ClearShortcutsController;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$1;->this$0:Lcom/android/quicksearchbox/preferences/ClearShortcutsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Z)V
    .locals 1
    .parameter "okClicked"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$1;->this$0:Lcom/android/quicksearchbox/preferences/ClearShortcutsController;

    #calls: Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->clearShortcuts()V
    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->access$000(Lcom/android/quicksearchbox/preferences/ClearShortcutsController;)V

    .line 55
    :cond_0
    return-void
.end method
