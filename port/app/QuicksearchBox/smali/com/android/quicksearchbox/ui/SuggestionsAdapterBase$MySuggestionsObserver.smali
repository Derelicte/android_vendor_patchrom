.class Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;
.super Landroid/database/DataSetObserver;
.source "SuggestionsAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySuggestionsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>.MySuggestionsObserver;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>.MySuggestionsObserver;"
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 272
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>.MySuggestionsObserver;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionsChanged()V

    .line 273
    return-void
.end method
