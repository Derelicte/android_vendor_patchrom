.class Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusClickListener;
.super Ljava/lang/Object;
.source "CorpusSelectionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/CorpusSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorpusClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/CorpusSelectionDialog;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/CorpusSelectionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusClickListener;->this$0:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/CorpusSelectionDialog;Lcom/android/quicksearchbox/CorpusSelectionDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusClickListener;-><init>(Lcom/android/quicksearchbox/CorpusSelectionDialog;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    .line 193
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    iget-object v1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusClickListener;->this$0:Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->selectCorpus(Lcom/android/quicksearchbox/Corpus;)V

    .line 194
    return-void
.end method
