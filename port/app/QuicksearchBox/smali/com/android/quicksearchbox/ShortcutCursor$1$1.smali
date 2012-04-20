.class Lcom/android/quicksearchbox/ShortcutCursor$1$1;
.super Ljava/lang/Object;
.source "ShortcutCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutCursor$1;->onShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quicksearchbox/ShortcutCursor$1;

.field final synthetic val$refreshed:Lcom/android/quicksearchbox/SuggestionCursor;

.field final synthetic val$shortcutId:Ljava/lang/String;

.field final synthetic val$source:Lcom/android/quicksearchbox/Source;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutCursor$1;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutCursor$1$1;->this$1:Lcom/android/quicksearchbox/ShortcutCursor$1;

    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutCursor$1$1;->val$source:Lcom/android/quicksearchbox/Source;

    iput-object p3, p0, Lcom/android/quicksearchbox/ShortcutCursor$1$1;->val$shortcutId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/quicksearchbox/ShortcutCursor$1$1;->val$refreshed:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutCursor$1$1;->this$1:Lcom/android/quicksearchbox/ShortcutCursor$1;

    iget-object v0, v0, Lcom/android/quicksearchbox/ShortcutCursor$1;->this$0:Lcom/android/quicksearchbox/ShortcutCursor;

    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutCursor$1$1;->val$source:Lcom/android/quicksearchbox/Source;

    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutCursor$1$1;->val$shortcutId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/quicksearchbox/ShortcutCursor$1$1;->val$refreshed:Lcom/android/quicksearchbox/SuggestionCursor;

    #calls: Lcom/android/quicksearchbox/ShortcutCursor;->refresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/quicksearchbox/ShortcutCursor;->access$100(Lcom/android/quicksearchbox/ShortcutCursor;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 104
    return-void
.end method
