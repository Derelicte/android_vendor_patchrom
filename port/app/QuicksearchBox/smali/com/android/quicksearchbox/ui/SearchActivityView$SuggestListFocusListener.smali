.class Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestListFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "focused"

    .prologue
    .line 612
    if-eqz p2, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->considerHidingInputMethod()V

    .line 615
    :cond_0
    return-void
.end method
