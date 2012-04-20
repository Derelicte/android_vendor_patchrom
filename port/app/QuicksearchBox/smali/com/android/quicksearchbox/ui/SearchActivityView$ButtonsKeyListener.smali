.class Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonsKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    #calls: Lcom/android/quicksearchbox/ui/SearchActivityView;->forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z
    invoke-static {v0, p2, p3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->access$1000(Lcom/android/quicksearchbox/ui/SearchActivityView;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
