.class Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;
.super Ljava/lang/Object;
.source "ContactSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/ContactSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactBadgeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/ContactSuggestionView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/ContactSuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;->this$0:Lcom/android/quicksearchbox/ui/ContactSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/ContactSuggestionView;Lcom/android/quicksearchbox/ui/ContactSuggestionView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;-><init>(Lcom/android/quicksearchbox/ui/ContactSuggestionView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;->this$0:Lcom/android/quicksearchbox/ui/ContactSuggestionView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->onSuggestionQuickContactClicked()V

    .line 69
    return-void
.end method
