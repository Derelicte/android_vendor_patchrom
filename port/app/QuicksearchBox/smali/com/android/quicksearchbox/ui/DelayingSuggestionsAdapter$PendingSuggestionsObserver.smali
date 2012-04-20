.class Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;
.super Landroid/database/DataSetObserver;
.source "DelayingSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingSuggestionsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>.PendingSuggestionsObserver;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;->this$0:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>.PendingSuggestionsObserver;"
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;-><init>(Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 133
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>.PendingSuggestionsObserver;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;->this$0:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->onPendingSuggestionsChanged()V

    .line 134
    return-void
.end method
