.class Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$1;
.super Ljava/lang/Object;
.source "SearchActivityViewSinglePane.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$1;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$1;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->showCorpusSelectionDialog()V

    .line 59
    return-void
.end method
