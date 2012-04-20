.class Lcom/android/quicksearchbox/ui/BaseSuggestionView$ClickListener;
.super Ljava/lang/Object;
.source "BaseSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/BaseSuggestionView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$ClickListener;->this$0:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;Lcom/android/quicksearchbox/ui/BaseSuggestionView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView$ClickListener;-><init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$ClickListener;->this$0:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->onSuggestionClicked()V

    .line 129
    return-void
.end method
