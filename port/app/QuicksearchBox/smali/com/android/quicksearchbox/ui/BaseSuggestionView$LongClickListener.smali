.class Lcom/android/quicksearchbox/ui/BaseSuggestionView$LongClickListener;
.super Ljava/lang/Object;
.source "BaseSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/BaseSuggestionView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$LongClickListener;->this$0:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;Lcom/android/quicksearchbox/ui/BaseSuggestionView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView$LongClickListener;-><init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$LongClickListener;->this$0:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->onRemoveFromHistoryClicked()V

    .line 135
    const/4 v0, 0x1

    return v0
.end method
