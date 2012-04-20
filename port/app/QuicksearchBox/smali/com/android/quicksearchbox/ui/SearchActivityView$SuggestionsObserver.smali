.class public Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsObserver;
.super Landroid/database/DataSetObserver;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SuggestionsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method protected constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsObserver;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsObserver;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onSuggestionsChanged()V

    .line 632
    return-void
.end method
