.class Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mExitClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
