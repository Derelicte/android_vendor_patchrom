.class Lcom/android/quicksearchbox/ShortcutCursor$1;
.super Ljava/lang/Object;
.source "ShortcutCursor.java"

# interfaces
.implements Lcom/android/quicksearchbox/ShortcutRefresher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutCursor;->refresh(Lcom/android/quicksearchbox/Suggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutCursor;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutCursor$1;->this$0:Lcom/android/quicksearchbox/ShortcutCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 2
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutCursor$1;->this$0:Lcom/android/quicksearchbox/ShortcutCursor;

    #getter for: Lcom/android/quicksearchbox/ShortcutCursor;->mShortcutRepo:Lcom/android/quicksearchbox/ShortcutRepository;
    invoke-static {v0}, Lcom/android/quicksearchbox/ShortcutCursor;->access$000(Lcom/android/quicksearchbox/ShortcutCursor;)Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/quicksearchbox/ShortcutRepository;->updateShortcut(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 101
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutCursor$1;->this$0:Lcom/android/quicksearchbox/ShortcutCursor;

    #getter for: Lcom/android/quicksearchbox/ShortcutCursor;->mUiThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/quicksearchbox/ShortcutCursor;->access$200(Lcom/android/quicksearchbox/ShortcutCursor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quicksearchbox/ShortcutCursor$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/quicksearchbox/ShortcutCursor$1$1;-><init>(Lcom/android/quicksearchbox/ShortcutCursor$1;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method
