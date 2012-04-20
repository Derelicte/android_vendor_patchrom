.class Lcom/android/quicksearchbox/preferences/ClearShortcutsController$2;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->updateClearShortcutsPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/preferences/ClearShortcutsController;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/preferences/ClearShortcutsController;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$2;->this$0:Lcom/android/quicksearchbox/preferences/ClearShortcutsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Boolean;)Z
    .locals 2
    .parameter "hasHistory"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$2;->this$0:Lcom/android/quicksearchbox/preferences/ClearShortcutsController;

    #getter for: Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->mClearShortcutsPreference:Lcom/android/quicksearchbox/preferences/OkCancelPreference;
    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/ClearShortcutsController;->access$100(Lcom/android/quicksearchbox/preferences/ClearShortcutsController;)Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/preferences/OkCancelPreference;->setEnabled(Z)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/preferences/ClearShortcutsController$2;->consume(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
