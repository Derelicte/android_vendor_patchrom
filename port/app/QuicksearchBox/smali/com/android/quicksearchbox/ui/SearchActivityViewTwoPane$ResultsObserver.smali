.class public Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;
.super Landroid/database/DataSetObserver;
.source "SearchActivityViewTwoPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResultsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;


# direct methods
.method protected constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->onResultsChanged()V

    .line 316
    return-void
.end method
