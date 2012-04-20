.class Lcom/android/quicksearchbox/SearchActivity$8;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;Lcom/android/quicksearchbox/Suggestions;)V
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
        "Lcom/android/quicksearchbox/ShortcutCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;

.field final synthetic val$suggestions:Lcom/android/quicksearchbox/Suggestions;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/Suggestions;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$8;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    iput-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$8;->val$suggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/android/quicksearchbox/ShortcutCursor;)Z
    .locals 1
    .parameter "shortcuts"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$8;->val$suggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/Suggestions;->setShortcuts(Lcom/android/quicksearchbox/ShortcutCursor;)V

    .line 650
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 647
    check-cast p1, Lcom/android/quicksearchbox/ShortcutCursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$8;->consume(Lcom/android/quicksearchbox/ShortcutCursor;)Z

    move-result v0

    return v0
.end method
