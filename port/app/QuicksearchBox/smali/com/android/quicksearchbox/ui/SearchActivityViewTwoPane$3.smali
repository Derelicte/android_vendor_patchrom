.class Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;
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
    .line 102
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->isQueryEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mExitClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mExitClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 107
    :cond_0
    return-void
.end method
