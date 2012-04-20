.class Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;
.super Ljava/lang/Object;
.source "SearchActivityViewTwoPane.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    #calls: Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->showPopupMenu()V
    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->access$000(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    .line 84
    return-void
.end method
