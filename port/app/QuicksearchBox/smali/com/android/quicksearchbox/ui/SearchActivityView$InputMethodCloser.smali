.class Lcom/android/quicksearchbox/ui/SearchActivityView$InputMethodCloser;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputMethodCloser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$InputMethodCloser;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$InputMethodCloser;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 536
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$InputMethodCloser;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->considerHidingInputMethod()V

    .line 540
    return-void
.end method
