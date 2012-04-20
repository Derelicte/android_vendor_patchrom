.class Lcom/android/quicksearchbox/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$2;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$2;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    #getter for: Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;
    invoke-static {v0}, Lcom/android/quicksearchbox/SearchActivity;->access$000(Lcom/android/quicksearchbox/SearchActivity;)Lcom/android/quicksearchbox/ui/SearchActivityView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->showInputMethodForQuery()V

    .line 100
    return-void
.end method
