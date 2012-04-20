.class Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$CorpusSelectionListener;
.super Ljava/lang/Object;
.source "SearchActivityViewSinglePane.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorpusSelectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$CorpusSelectionListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$CorpusSelectionListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;)V

    return-void
.end method


# virtual methods
.method public onCorpusSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "corpusName"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$CorpusSelectionListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->onCorpusSelected(Ljava/lang/String;)V

    .line 137
    return-void
.end method
