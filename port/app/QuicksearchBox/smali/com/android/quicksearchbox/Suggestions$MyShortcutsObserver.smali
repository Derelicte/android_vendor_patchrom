.class Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;
.super Landroid/database/DataSetObserver;
.source "Suggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/Suggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyShortcutsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/Suggestions;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;->this$0:Lcom/android/quicksearchbox/Suggestions;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/Suggestions;Lcom/android/quicksearchbox/Suggestions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;-><init>(Lcom/android/quicksearchbox/Suggestions;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;->this$0:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Suggestions;->notifyDataSetChanged()V

    .line 369
    return-void
.end method
