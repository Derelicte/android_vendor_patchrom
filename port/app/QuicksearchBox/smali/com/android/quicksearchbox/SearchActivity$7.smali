.class Lcom/android/quicksearchbox/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->removeFromHistoryClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;

.field final synthetic val$adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$7;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    iput-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$7;->val$adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iput-wide p3, p0, Lcom/android/quicksearchbox/SearchActivity$7;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$7;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity$7;->val$adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iget-wide v2, p0, Lcom/android/quicksearchbox/SearchActivity$7;->val$id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quicksearchbox/SearchActivity;->removeFromHistory(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 538
    return-void
.end method
